
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {int context; int (* wakeup_workers ) (int ) ;int region_lock; int failed_recovered_regions; int recovered_regions; } ;
struct dm_region {struct dm_region_hash* rh; int list; } ;


 int list_add (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (int ) ;

void dm_rh_recovery_end(struct dm_region *reg, int success)
{
 struct dm_region_hash *rh = reg->rh;

 spin_lock_irq(&rh->region_lock);
 if (success)
  list_add(&reg->list, &reg->rh->recovered_regions);
 else
  list_add(&reg->list, &reg->rh->failed_recovered_regions);

 spin_unlock_irq(&rh->region_lock);

 rh->wakeup_workers(rh->context);
}
