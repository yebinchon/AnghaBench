
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int _PAGE_TYPE_EMPTY ;
 int clear_table (unsigned long*,int ,int) ;
 int memset (unsigned long*,int ,int) ;

void clear_table_pgstes(unsigned long *table)
{
 clear_table(table, _PAGE_TYPE_EMPTY, PAGE_SIZE/4);
 memset(table + 256, 0, PAGE_SIZE/4);
 clear_table(table + 512, _PAGE_TYPE_EMPTY, PAGE_SIZE/4);
 memset(table + 768, 0, PAGE_SIZE/4);
}
