
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thin_c {TYPE_1__* pool; } ;
struct dm_thin_new_mapping {int bio; int data_block; scalar_t__ definitely_not_shared; scalar_t__ pass_discard; int cell2; int cell; struct thin_c* tc; } ;
struct TYPE_2__ {int mapping_pool; int pmd; } ;


 int bio_endio (int ,int ) ;
 int cell_defer_no_holder (struct thin_c*,int ) ;
 scalar_t__ dm_pool_block_is_used (int ,int ,int*) ;
 int inc_all_io_entry (TYPE_1__*,int ) ;
 int mempool_free (struct dm_thin_new_mapping*,int ) ;
 int remap_and_issue (struct thin_c*,int ,int ) ;

__attribute__((used)) static void process_prepared_discard_passdown(struct dm_thin_new_mapping *m)
{
 struct thin_c *tc = m->tc;

 inc_all_io_entry(tc->pool, m->bio);
 cell_defer_no_holder(tc, m->cell);
 cell_defer_no_holder(tc, m->cell2);

 if (m->pass_discard)
  if (m->definitely_not_shared)
   remap_and_issue(tc, m->bio, m->data_block);
  else {
   bool used = 0;
   if (dm_pool_block_is_used(tc->pool->pmd, m->data_block, &used) || used)
    bio_endio(m->bio, 0);
   else
    remap_and_issue(tc, m->bio, m->data_block);
  }
 else
  bio_endio(m->bio, 0);

 mempool_free(m, tc->pool->mapping_pool);
}
