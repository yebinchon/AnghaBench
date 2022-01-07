
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {TYPE_1__* dev; } ;
struct r5conf {int wait_for_stripe; int active_aligned_reads; struct bio* retry_read_aligned; } ;
struct bio {int bi_sector; int bi_size; int bi_bdev; } ;
typedef int sector_t ;
struct TYPE_2__ {int flags; } ;


 int R5_ReadNoMerge ;
 scalar_t__ STRIPE_SECTORS ;
 int add_stripe_bio (struct stripe_head*,struct bio*,int,int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int bdev_get_queue (int ) ;
 int bio_endio (struct bio*,int ) ;
 struct stripe_head* get_active_stripe (struct r5conf*,int,int ,int,int ) ;
 int handle_stripe (struct stripe_head*) ;
 int raid5_bi_processed_stripes (struct bio*) ;
 int raid5_compute_sector (struct r5conf*,int,int ,int*,int *) ;
 int raid5_dec_bi_active_stripes (struct bio*) ;
 int raid5_set_bi_processed_stripes (struct bio*,int) ;
 int release_stripe (struct stripe_head*) ;
 int set_bit (int ,int *) ;
 int trace_block_bio_complete (int ,struct bio*) ;
 int wake_up (int *) ;

__attribute__((used)) static int retry_aligned_read(struct r5conf *conf, struct bio *raid_bio)
{
 struct stripe_head *sh;
 int dd_idx;
 sector_t sector, logical_sector, last_sector;
 int scnt = 0;
 int remaining;
 int handled = 0;

 logical_sector = raid_bio->bi_sector & ~((sector_t)STRIPE_SECTORS-1);
 sector = raid5_compute_sector(conf, logical_sector,
          0, &dd_idx, ((void*)0));
 last_sector = raid_bio->bi_sector + (raid_bio->bi_size>>9);

 for (; logical_sector < last_sector;
      logical_sector += STRIPE_SECTORS,
       sector += STRIPE_SECTORS,
       scnt++) {

  if (scnt < raid5_bi_processed_stripes(raid_bio))

   continue;

  sh = get_active_stripe(conf, sector, 0, 1, 0);

  if (!sh) {

   raid5_set_bi_processed_stripes(raid_bio, scnt);
   conf->retry_read_aligned = raid_bio;
   return handled;
  }

  if (!add_stripe_bio(sh, raid_bio, dd_idx, 0)) {
   release_stripe(sh);
   raid5_set_bi_processed_stripes(raid_bio, scnt);
   conf->retry_read_aligned = raid_bio;
   return handled;
  }

  set_bit(R5_ReadNoMerge, &sh->dev[dd_idx].flags);
  handle_stripe(sh);
  release_stripe(sh);
  handled++;
 }
 remaining = raid5_dec_bi_active_stripes(raid_bio);
 if (remaining == 0) {
  trace_block_bio_complete(bdev_get_queue(raid_bio->bi_bdev),
      raid_bio);
  bio_endio(raid_bio, 0);
 }
 if (atomic_dec_and_test(&conf->active_aligned_reads))
  wake_up(&conf->wait_for_stripe);
 return handled;
}
