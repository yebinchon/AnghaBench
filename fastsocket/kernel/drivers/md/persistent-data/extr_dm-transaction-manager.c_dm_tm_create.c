
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_transaction_manager {scalar_t__ buckets; int lock; struct dm_space_map* sm; struct dm_block_manager* bm; int * real; scalar_t__ is_clone; } ;
struct dm_space_map {int dummy; } ;
struct dm_block_manager {int dummy; } ;


 int DM_HASH_SIZE ;
 int ENOMEM ;
 struct dm_transaction_manager* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (scalar_t__) ;
 struct dm_transaction_manager* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct dm_transaction_manager *dm_tm_create(struct dm_block_manager *bm,
         struct dm_space_map *sm)
{
 int i;
 struct dm_transaction_manager *tm;

 tm = kmalloc(sizeof(*tm), GFP_KERNEL);
 if (!tm)
  return ERR_PTR(-ENOMEM);

 tm->is_clone = 0;
 tm->real = ((void*)0);
 tm->bm = bm;
 tm->sm = sm;

 spin_lock_init(&tm->lock);
 for (i = 0; i < DM_HASH_SIZE; i++)
  INIT_HLIST_HEAD(tm->buckets + i);

 return tm;
}
