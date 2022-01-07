
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_region_hash {int hash_lock; int region_lock; TYPE_2__* log; } ;
struct dm_region {scalar_t__ state; int key; int list; int pending; } ;
typedef int region_t ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* mark_region ) (TYPE_2__*,int ) ;} ;


 scalar_t__ DM_RH_CLEAN ;
 scalar_t__ DM_RH_DIRTY ;
 struct dm_region* __rh_find (struct dm_region_hash*,int ) ;
 int atomic_inc (int *) ;
 int list_del_init (int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (TYPE_2__*,int ) ;

void dm_rh_inc(struct dm_region_hash *rh, region_t region)
{
 struct dm_region *reg;

 read_lock(&rh->hash_lock);
 reg = __rh_find(rh, region);

 spin_lock_irq(&rh->region_lock);
 atomic_inc(&reg->pending);

 if (reg->state == DM_RH_CLEAN) {
  reg->state = DM_RH_DIRTY;
  list_del_init(&reg->list);
  spin_unlock_irq(&rh->region_lock);

  rh->log->type->mark_region(rh->log, reg->key);
 } else
  spin_unlock_irq(&rh->region_lock);


 read_unlock(&rh->hash_lock);
}
