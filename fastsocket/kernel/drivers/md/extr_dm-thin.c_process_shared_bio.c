
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thin_c {int td; struct pool* pool; } ;
struct pool {int shared_read_ds; } ;
struct dm_thin_lookup_result {int block; } ;
struct dm_thin_endio_hook {int shared_read_entry; } ;
struct dm_cell_key {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {scalar_t__ bi_size; } ;
typedef int dm_block_t ;
struct TYPE_2__ {struct dm_thin_endio_hook* ptr; } ;


 scalar_t__ WRITE ;
 scalar_t__ bio_data_dir (struct bio*) ;
 scalar_t__ bio_detain (struct pool*,struct dm_cell_key*,struct bio*,struct dm_bio_prison_cell**) ;
 int break_sharing (struct thin_c*,struct bio*,int ,struct dm_cell_key*,struct dm_thin_lookup_result*,struct dm_bio_prison_cell*) ;
 int build_data_key (int ,int ,struct dm_cell_key*) ;
 int cell_defer_no_holder (struct thin_c*,struct dm_bio_prison_cell*) ;
 int dm_deferred_entry_inc (int ) ;
 TYPE_1__* dm_get_mapinfo (struct bio*) ;
 int inc_all_io_entry (struct pool*,struct bio*) ;
 int remap_and_issue (struct thin_c*,struct bio*,int ) ;

__attribute__((used)) static void process_shared_bio(struct thin_c *tc, struct bio *bio,
          dm_block_t block,
          struct dm_thin_lookup_result *lookup_result)
{
 struct dm_bio_prison_cell *cell;
 struct pool *pool = tc->pool;
 struct dm_cell_key key;





 build_data_key(tc->td, lookup_result->block, &key);
 if (bio_detain(pool, &key, bio, &cell))
  return;

 if (bio_data_dir(bio) == WRITE && bio->bi_size)
  break_sharing(tc, bio, block, &key, lookup_result, cell);
 else {
  struct dm_thin_endio_hook *h = dm_get_mapinfo(bio)->ptr;

  h->shared_read_entry = dm_deferred_entry_inc(pool->shared_read_ds);
  inc_all_io_entry(pool, bio);
  cell_defer_no_holder(tc, cell);

  remap_and_issue(tc, bio, lookup_result->block);
 }
}
