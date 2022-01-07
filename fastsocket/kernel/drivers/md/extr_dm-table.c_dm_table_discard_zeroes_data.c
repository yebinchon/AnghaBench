
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {scalar_t__ discard_zeroes_data_unsupported; } ;
struct dm_table {int dummy; } ;


 unsigned int dm_table_get_num_targets (struct dm_table*) ;
 struct dm_target* dm_table_get_target (struct dm_table*,int ) ;

__attribute__((used)) static bool dm_table_discard_zeroes_data(struct dm_table *t)
{
 struct dm_target *ti;
 unsigned i = 0;


 while (i < dm_table_get_num_targets(t)) {
  ti = dm_table_get_target(t, i++);

  if (ti->discard_zeroes_data_unsupported)
   return 0;
 }

 return 1;
}
