
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int * mempools; } ;


 int dm_free_md_mempools (int *) ;

void dm_table_free_md_mempools(struct dm_table *t)
{
 dm_free_md_mempools(t->mempools);
 t->mempools = ((void*)0);
}
