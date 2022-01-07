
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thin_c {TYPE_1__* pool; } ;
struct dm_thin_new_mapping {int cell2; int cell; int bio; struct thin_c* tc; } ;
struct TYPE_2__ {int mapping_pool; } ;


 int bio_io_error (int ) ;
 int cell_defer_no_holder (struct thin_c*,int ) ;
 int mempool_free (struct dm_thin_new_mapping*,int ) ;

__attribute__((used)) static void process_prepared_discard_fail(struct dm_thin_new_mapping *m)
{
 struct thin_c *tc = m->tc;

 bio_io_error(m->bio);
 cell_defer_no_holder(tc, m->cell);
 cell_defer_no_holder(tc, m->cell2);
 mempool_free(m, tc->pool->mapping_pool);
}
