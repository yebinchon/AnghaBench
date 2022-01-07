
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_region_hash {int hash_lock; int region_lock; int clean_regions; int region_pool; TYPE_2__* log; } ;
struct dm_region {scalar_t__ state; int list; int delayed_bios; int pending; int key; struct dm_region_hash* rh; } ;
typedef int region_t ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {scalar_t__ (* in_sync ) (TYPE_2__*,int ,int) ;} ;


 scalar_t__ DM_RH_CLEAN ;
 scalar_t__ DM_RH_NOSYNC ;
 int GFP_ATOMIC ;
 int GFP_NOIO ;
 int INIT_LIST_HEAD (int *) ;
 int __GFP_NOFAIL ;
 int __rh_insert (struct dm_region_hash*,struct dm_region*) ;
 struct dm_region* __rh_lookup (struct dm_region_hash*,int ) ;
 int atomic_set (int *,int ) ;
 int bio_list_init (int *) ;
 struct dm_region* kmalloc (int,int) ;
 int list_add (int *,int *) ;
 struct dm_region* mempool_alloc (int ,int ) ;
 int mempool_free (struct dm_region*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (TYPE_2__*,int ,int) ;
 scalar_t__ unlikely (int) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static struct dm_region *__rh_alloc(struct dm_region_hash *rh, region_t region)
{
 struct dm_region *reg, *nreg;

 nreg = mempool_alloc(rh->region_pool, GFP_ATOMIC);
 if (unlikely(!nreg))
  nreg = kmalloc(sizeof(*nreg), GFP_NOIO | __GFP_NOFAIL);

 nreg->state = rh->log->type->in_sync(rh->log, region, 1) ?
        DM_RH_CLEAN : DM_RH_NOSYNC;
 nreg->rh = rh;
 nreg->key = region;
 INIT_LIST_HEAD(&nreg->list);
 atomic_set(&nreg->pending, 0);
 bio_list_init(&nreg->delayed_bios);

 write_lock_irq(&rh->hash_lock);
 reg = __rh_lookup(rh, region);
 if (reg)

  mempool_free(nreg, rh->region_pool);
 else {
  __rh_insert(rh, nreg);
  if (nreg->state == DM_RH_CLEAN) {
   spin_lock(&rh->region_lock);
   list_add(&nreg->list, &rh->clean_regions);
   spin_unlock(&rh->region_lock);
  }

  reg = nreg;
 }
 write_unlock_irq(&rh->hash_lock);

 return reg;
}
