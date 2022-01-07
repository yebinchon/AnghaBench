
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int holders; } ;


 int atomic_inc (int *) ;

void dm_table_get(struct dm_table *t)
{
 atomic_inc(&t->holders);
}
