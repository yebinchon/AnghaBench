
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_area_db {char* version; char* index_64; char* count_64; char* index_32; char* count_32; char* index_16; char* count_16; int magic_num; } ;


 int dump_field (char*,int ,int) ;
 int pr_debug (char*,char const*,int,char*) ;

__attribute__((used)) static void _dump_db(const struct os_area_db *db, const char *func,
 int line)
{
 char str[sizeof(db->magic_num) + 1];

 dump_field(str, db->magic_num, sizeof(db->magic_num));
 pr_debug("%s:%d: db.magic_num:      '%s'\n", func, line,
  str);
 pr_debug("%s:%d: db.version:         %u\n", func, line,
  db->version);
 pr_debug("%s:%d: db.index_64:        %u\n", func, line,
  db->index_64);
 pr_debug("%s:%d: db.count_64:        %u\n", func, line,
  db->count_64);
 pr_debug("%s:%d: db.index_32:        %u\n", func, line,
  db->index_32);
 pr_debug("%s:%d: db.count_32:        %u\n", func, line,
  db->count_32);
 pr_debug("%s:%d: db.index_16:        %u\n", func, line,
  db->index_16);
 pr_debug("%s:%d: db.count_16:        %u\n", func, line,
  db->count_16);
}
