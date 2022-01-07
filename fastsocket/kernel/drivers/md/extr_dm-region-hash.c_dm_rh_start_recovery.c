
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {int max_recovery; int context; int (* wakeup_workers ) (int ) ;int recovery_count; } ;


 int stub1 (int ) ;
 int up (int *) ;

void dm_rh_start_recovery(struct dm_region_hash *rh)
{
 int i;

 for (i = 0; i < rh->max_recovery; i++)
  up(&rh->recovery_count);

 rh->wakeup_workers(rh->context);
}
