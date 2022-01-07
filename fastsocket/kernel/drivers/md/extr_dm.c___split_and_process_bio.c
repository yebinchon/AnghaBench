
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bio {int bi_rw; int bi_idx; int bi_sector; } ;
struct mapped_device {struct bio flush_bio; } ;
struct clone_info {int map; TYPE_1__* io; scalar_t__ sector_count; struct bio* bio; struct mapped_device* md; int idx; int sector; } ;
struct TYPE_4__ {int endio_lock; struct mapped_device* md; struct bio* bio; int io_count; int error; } ;


 int BIO_FLUSH ;
 int __clone_and_map (struct clone_info*) ;
 int __clone_and_map_empty_flush (struct clone_info*) ;
 TYPE_1__* alloc_io (struct mapped_device*) ;
 int atomic_set (int *,int) ;
 int bio_io_error (struct bio*) ;
 scalar_t__ bio_sectors (struct bio*) ;
 int dec_pending (TYPE_1__*,int) ;
 int dm_get_live_table (struct mapped_device*) ;
 int dm_table_put (int ) ;
 int spin_lock_init (int *) ;
 int start_io_acct (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __split_and_process_bio(struct mapped_device *md, struct bio *bio)
{
 struct clone_info ci;
 int error = 0;

 ci.map = dm_get_live_table(md);
 if (unlikely(!ci.map)) {
  bio_io_error(bio);
  return;
 }

 ci.md = md;
 ci.io = alloc_io(md);
 ci.io->error = 0;
 atomic_set(&ci.io->io_count, 1);
 ci.io->bio = bio;
 ci.io->md = md;
 spin_lock_init(&ci.io->endio_lock);
 ci.sector = bio->bi_sector;
 ci.idx = bio->bi_idx;

 start_io_acct(ci.io);
 if (bio->bi_rw & BIO_FLUSH) {
  ci.bio = &ci.md->flush_bio;
  ci.sector_count = 0;
  error = __clone_and_map_empty_flush(&ci);

 } else {
  ci.bio = bio;
  ci.sector_count = bio_sectors(bio);
  while (ci.sector_count && !error)
   error = __clone_and_map(&ci);
 }


 dec_pending(ci.io, error);
 dm_table_put(ci.map);
}
