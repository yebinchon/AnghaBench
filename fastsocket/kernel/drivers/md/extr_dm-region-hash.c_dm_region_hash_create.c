
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dm_region_hash {void (* dispatch_bios ) (void*,struct bio_list*) ;void (* wakeup_workers ) (void*) ;void (* wakeup_all_recovery_waiters ) (void*) ;unsigned int max_recovery; unsigned int mask; unsigned int nr_buckets; int * buckets; int region_pool; scalar_t__ flush_failure; int failed_recovered_regions; int recovered_regions; int quiesced_regions; int clean_regions; int recovery_in_flight; int recovery_count; int region_lock; int prime; int shift; int hash_lock; scalar_t__ region_shift; int region_size; struct dm_dirty_log* log; int target_begin; void* context; } ;
struct dm_region {int dummy; } ;
struct dm_dirty_log {int dummy; } ;
typedef int sector_t ;
typedef int region_t ;


 int DMERR (char*) ;
 int ENOMEM ;
 struct dm_region_hash* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MIN_REGIONS ;
 int RH_HASH_MULT ;
 int RH_HASH_SHIFT ;
 int atomic_set (int *,int ) ;
 scalar_t__ ffs (int ) ;
 int kfree (struct dm_region_hash*) ;
 struct dm_region_hash* kmalloc (int,int ) ;
 int mempool_create_kmalloc_pool (int ,int) ;
 int rwlock_init (int *) ;
 int sema_init (int *,int ) ;
 int spin_lock_init (int *) ;
 int vfree (int *) ;
 int * vmalloc (unsigned int) ;

struct dm_region_hash *dm_region_hash_create(
  void *context, void (*dispatch_bios)(void *context,
           struct bio_list *bios),
  void (*wakeup_workers)(void *context),
  void (*wakeup_all_recovery_waiters)(void *context),
  sector_t target_begin, unsigned max_recovery,
  struct dm_dirty_log *log, uint32_t region_size,
  region_t nr_regions)
{
 struct dm_region_hash *rh;
 unsigned nr_buckets, max_buckets;
 size_t i;





 max_buckets = nr_regions >> 6;
 for (nr_buckets = 128u; nr_buckets < max_buckets; nr_buckets <<= 1)
  ;
 nr_buckets >>= 1;

 rh = kmalloc(sizeof(*rh), GFP_KERNEL);
 if (!rh) {
  DMERR("unable to allocate region hash memory");
  return ERR_PTR(-ENOMEM);
 }

 rh->context = context;
 rh->dispatch_bios = dispatch_bios;
 rh->wakeup_workers = wakeup_workers;
 rh->wakeup_all_recovery_waiters = wakeup_all_recovery_waiters;
 rh->target_begin = target_begin;
 rh->max_recovery = max_recovery;
 rh->log = log;
 rh->region_size = region_size;
 rh->region_shift = ffs(region_size) - 1;
 rwlock_init(&rh->hash_lock);
 rh->mask = nr_buckets - 1;
 rh->nr_buckets = nr_buckets;

 rh->shift = RH_HASH_SHIFT;
 rh->prime = RH_HASH_MULT;

 rh->buckets = vmalloc(nr_buckets * sizeof(*rh->buckets));
 if (!rh->buckets) {
  DMERR("unable to allocate region hash bucket memory");
  kfree(rh);
  return ERR_PTR(-ENOMEM);
 }

 for (i = 0; i < nr_buckets; i++)
  INIT_LIST_HEAD(rh->buckets + i);

 spin_lock_init(&rh->region_lock);
 sema_init(&rh->recovery_count, 0);
 atomic_set(&rh->recovery_in_flight, 0);
 INIT_LIST_HEAD(&rh->clean_regions);
 INIT_LIST_HEAD(&rh->quiesced_regions);
 INIT_LIST_HEAD(&rh->recovered_regions);
 INIT_LIST_HEAD(&rh->failed_recovered_regions);
 rh->flush_failure = 0;

 rh->region_pool = mempool_create_kmalloc_pool(MIN_REGIONS,
            sizeof(struct dm_region));
 if (!rh->region_pool) {
  vfree(rh->buckets);
  kfree(rh);
  rh = ERR_PTR(-ENOMEM);
 }

 return rh;
}
