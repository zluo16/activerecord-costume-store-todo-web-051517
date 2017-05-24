class HauntedHouse < ActiveRecord::Base
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS haunted_houses (
        id INTEGER PRIMARY KEY,
        name TEXT,
        location TEXT,
        theme TEXT,
        price INTEGER,
        family_friendly BOOLEAN,
        opening_date TEXT,
        closing_date TEXT,
        description TEXT
      )
    SQL

    ActiveRecord::Base.connection.execute(sql)[0]
  end
end
