
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_snapshot {TYPE_2__* store; TYPE_1__* cow; } ;
struct dm_exception {scalar_t__ old_chunk; int new_chunk; } ;
struct bio {int bi_sector; int bi_bdev; } ;
typedef scalar_t__ chunk_t ;
struct TYPE_4__ {int chunk_mask; } ;
struct TYPE_3__ {int bdev; } ;


 int chunk_to_sector (TYPE_2__*,scalar_t__) ;
 scalar_t__ dm_chunk_number (int ) ;

__attribute__((used)) static void remap_exception(struct dm_snapshot *s, struct dm_exception *e,
       struct bio *bio, chunk_t chunk)
{
 bio->bi_bdev = s->cow->bdev;
 bio->bi_sector = chunk_to_sector(s->store,
      dm_chunk_number(e->new_chunk) +
      (chunk - e->old_chunk)) +
      (bio->bi_sector &
       s->store->chunk_mask);
}
