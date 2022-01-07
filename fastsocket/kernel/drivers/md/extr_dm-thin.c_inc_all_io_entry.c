
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool {int all_io_ds; } ;
struct dm_thin_endio_hook {int all_io_entry; } ;
struct bio {int bi_rw; } ;
struct TYPE_2__ {struct dm_thin_endio_hook* ptr; } ;


 int BIO_DISCARD ;
 int dm_deferred_entry_inc (int ) ;
 TYPE_1__* dm_get_mapinfo (struct bio*) ;

__attribute__((used)) static void inc_all_io_entry(struct pool *pool, struct bio *bio)
{
 struct dm_thin_endio_hook *h;

 if (bio->bi_rw & BIO_DISCARD)
  return;

 h = dm_get_mapinfo(bio)->ptr;
 h->all_io_entry = dm_deferred_entry_inc(pool->all_io_ds);
}
