
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target_callbacks {int list; } ;
struct dm_table {int target_callbacks; } ;


 int list_add (int *,int *) ;

void dm_table_add_target_callbacks(struct dm_table *t, struct dm_target_callbacks *cb)
{
 list_add(&cb->list, &t->target_callbacks);
}
