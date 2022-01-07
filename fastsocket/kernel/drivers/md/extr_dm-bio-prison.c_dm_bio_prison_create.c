
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hlist_head {int dummy; } ;
struct dm_bio_prison {int nr_buckets; int hash_mask; struct hlist_head* cells; int cell_pool; int lock; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (struct hlist_head*) ;
 int _cell_cache ;
 int calc_nr_buckets (unsigned int) ;
 int kfree (struct dm_bio_prison*) ;
 struct dm_bio_prison* kmalloc (size_t,int ) ;
 int mempool_create_slab_pool (unsigned int,int ) ;
 int spin_lock_init (int *) ;

struct dm_bio_prison *dm_bio_prison_create(unsigned nr_cells)
{
 unsigned i;
 uint32_t nr_buckets = calc_nr_buckets(nr_cells);
 size_t len = sizeof(struct dm_bio_prison) +
  (sizeof(struct hlist_head) * nr_buckets);
 struct dm_bio_prison *prison = kmalloc(len, GFP_KERNEL);

 if (!prison)
  return ((void*)0);

 spin_lock_init(&prison->lock);
 prison->cell_pool = mempool_create_slab_pool(nr_cells, _cell_cache);
 if (!prison->cell_pool) {
  kfree(prison);
  return ((void*)0);
 }

 prison->nr_buckets = nr_buckets;
 prison->hash_mask = nr_buckets - 1;
 prison->cells = (struct hlist_head *) (prison + 1);
 for (i = 0; i < nr_buckets; i++)
  INIT_HLIST_HEAD(prison->cells + i);

 return prison;
}
