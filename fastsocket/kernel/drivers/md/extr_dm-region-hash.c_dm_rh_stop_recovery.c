
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {int max_recovery; int recovery_count; } ;


 int down (int *) ;

void dm_rh_stop_recovery(struct dm_region_hash *rh)
{
 int i;


 for (i = 0; i < rh->max_recovery; i++)
  down(&rh->recovery_count);
}
