
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int td; struct pool* pool; } ;
struct pool {int mapping_pool; } ;
struct dm_thin_new_mapping {int list; int cell; int data_block; int virt_block; scalar_t__ err; int saved_bi_end_io; struct bio* bio; struct thin_c* tc; } ;
struct bio {int bi_end_io; } ;


 int bio_endio (struct bio*,int ) ;
 int cell_defer (struct thin_c*,int ) ;
 int cell_defer_no_holder (struct thin_c*,int ) ;
 int cell_error (struct pool*,int ) ;
 int dm_thin_insert_block (int ,int ,int ) ;
 int list_del (int *) ;
 int mempool_free (struct dm_thin_new_mapping*,int ) ;
 int metadata_operation_failed (struct pool*,char*,int) ;

__attribute__((used)) static void process_prepared_mapping(struct dm_thin_new_mapping *m)
{
 struct thin_c *tc = m->tc;
 struct pool *pool = tc->pool;
 struct bio *bio;
 int r;

 bio = m->bio;
 if (bio)
  bio->bi_end_io = m->saved_bi_end_io;

 if (m->err) {
  cell_error(pool, m->cell);
  goto out;
 }






 r = dm_thin_insert_block(tc->td, m->virt_block, m->data_block);
 if (r) {
  metadata_operation_failed(pool, "dm_thin_insert_block", r);
  cell_error(pool, m->cell);
  goto out;
 }







 if (bio) {
  cell_defer_no_holder(tc, m->cell);
  bio_endio(bio, 0);
 } else
  cell_defer(tc, m->cell);

out:
 list_del(&m->list);
 mempool_free(m, pool->mapping_pool);
}
