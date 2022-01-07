
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dm_snapshot {int complete; int pending; TYPE_3__* store; TYPE_2__* origin; TYPE_1__* cow; } ;
typedef int sector_t ;
struct TYPE_6__ {int chunk_shift; } ;
struct TYPE_5__ {int bdev; } ;
struct TYPE_4__ {int bdev; } ;


 int DM_CHUNK_CONSECUTIVE_BITS ;
 int ENOMEM ;
 int calc_max_buckets () ;
 int dm_exception_table_exit (int *,int ) ;
 scalar_t__ dm_exception_table_init (int *,int,int ) ;
 int exception_cache ;
 int get_dev_size (int ) ;
 int min (int,int) ;
 int rounddown_pow_of_two (int) ;

__attribute__((used)) static int init_hash_tables(struct dm_snapshot *s)
{
 sector_t hash_size, cow_dev_size, origin_dev_size, max_buckets;





 cow_dev_size = get_dev_size(s->cow->bdev);
 origin_dev_size = get_dev_size(s->origin->bdev);
 max_buckets = calc_max_buckets();

 hash_size = min(origin_dev_size, cow_dev_size) >> s->store->chunk_shift;
 hash_size = min(hash_size, max_buckets);

 if (hash_size < 64)
  hash_size = 64;
 hash_size = rounddown_pow_of_two(hash_size);
 if (dm_exception_table_init(&s->complete, hash_size,
        DM_CHUNK_CONSECUTIVE_BITS))
  return -ENOMEM;





 hash_size >>= 3;
 if (hash_size < 64)
  hash_size = 64;

 if (dm_exception_table_init(&s->pending, hash_size, 0)) {
  dm_exception_table_exit(&s->complete, exception_cache);
  return -ENOMEM;
 }

 return 0;
}
