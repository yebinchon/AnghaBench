
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_table_entry {int dummy; } ;


 int __start___dbe_table ;
 scalar_t__ __stop___dbe_table ;
 struct exception_table_entry* search_extable (int ,scalar_t__,unsigned long) ;
 struct exception_table_entry* search_module_dbetables (unsigned long) ;

__attribute__((used)) static const struct exception_table_entry *search_dbe_tables(unsigned long addr)
{
 const struct exception_table_entry *e;

 e = search_extable(__start___dbe_table, __stop___dbe_table - 1, addr);
 if (!e)
  e = search_module_dbetables(addr);
 return e;
}
