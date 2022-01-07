
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int dummy; } ;


 int suspend_targets (struct dm_table*,int) ;

void dm_table_postsuspend_targets(struct dm_table *t)
{
 if (!t)
  return;

 suspend_targets(t, 1);
}
