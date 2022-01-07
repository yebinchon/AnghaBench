
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dm_thin_new_mapping {TYPE_2__* tc; int list; int cell; int saved_bi_end_io; TYPE_1__* bio; } ;
struct TYPE_6__ {int mapping_pool; } ;
struct TYPE_5__ {TYPE_3__* pool; } ;
struct TYPE_4__ {int bi_end_io; } ;


 int cell_error (TYPE_3__*,int ) ;
 int list_del (int *) ;
 int mempool_free (struct dm_thin_new_mapping*,int ) ;

__attribute__((used)) static void process_prepared_mapping_fail(struct dm_thin_new_mapping *m)
{
 if (m->bio)
  m->bio->bi_end_io = m->saved_bi_end_io;
 cell_error(m->tc->pool, m->cell);
 list_del(&m->list);
 mempool_free(m, m->tc->pool->mapping_pool);
}
