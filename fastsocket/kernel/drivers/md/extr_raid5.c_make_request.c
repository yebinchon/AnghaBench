
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int state; } ;
struct r5conf {scalar_t__ reshape_progress; int reshape_safe; int wait_for_overlap; int preread_active_stripes; int device_lock; } ;
struct mddev {scalar_t__ reshape_position; int suspend_lo; int suspend_hi; scalar_t__ reshape_backwards; struct r5conf* private; } ;
struct bio {int bi_rw; int bi_sector; int bi_size; int bi_phys_segments; int bi_bdev; int bi_flags; int * bi_next; } ;
typedef int sector_t ;


 int BIO_DISCARD ;
 int BIO_FLUSH ;
 int BIO_RW_SYNCIO ;
 int BIO_UPTODATE ;
 int DEFINE_WAIT (int ) ;
 scalar_t__ MaxSector ;
 int const READ ;
 int RWA_MASK ;
 int STRIPE_DELAYED ;
 int STRIPE_EXPANDING ;
 int STRIPE_HANDLE ;
 int STRIPE_PREREAD_ACTIVE ;
 scalar_t__ STRIPE_SECTORS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_UNINTERRUPTIBLE ;
 int const WRITE ;
 int add_stripe_bio (struct stripe_head*,struct bio*,int,int const) ;
 int atomic_inc (int *) ;
 int bdev_get_queue (int ) ;
 int bio_data_dir (struct bio*) ;
 int bio_endio (struct bio*,int ) ;
 scalar_t__ bio_rw_flagged (struct bio*,int ) ;
 scalar_t__ chunk_aligned_read (struct mddev*,struct bio*) ;
 int clear_bit (int ,int *) ;
 int current ;
 int finish_wait (int *,int *) ;
 int flush_signals (int ) ;
 struct stripe_head* get_active_stripe (struct r5conf*,int,int,int,int ) ;
 int make_discard_request (struct mddev*,struct bio*) ;
 int md_flush_request (struct mddev*,struct bio*) ;
 int md_raid5_unplug_device (struct r5conf*) ;
 int md_write_end (struct mddev*) ;
 int md_write_start (struct mddev*,struct bio*) ;
 int pr_debug (char*,unsigned long long,unsigned long long) ;
 int prepare_to_wait (int *,int *,int ) ;
 int raid5_compute_sector (struct r5conf*,int,int,int*,int *) ;
 int raid5_dec_bi_active_stripes (struct bio*) ;
 int release_stripe (struct stripe_head*) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_block_bio_complete (int ,struct bio*) ;
 scalar_t__ unlikely (int) ;
 int w ;

__attribute__((used)) static int make_request(struct mddev *mddev, struct bio * bi)
{
 struct r5conf *conf = mddev->private;
 int dd_idx;
 sector_t new_sector;
 sector_t logical_sector, last_sector;
 struct stripe_head *sh;
 const int rw = bio_data_dir(bi);
 int remaining;

 if (unlikely(bi->bi_rw & BIO_FLUSH)) {
  md_flush_request(mddev, bi);
  return 0;
 }

 md_write_start(mddev, bi);

 if (rw == READ &&
      mddev->reshape_position == MaxSector &&
      chunk_aligned_read(mddev,bi))
  return 0;

 if (unlikely(bi->bi_rw & BIO_DISCARD)) {
  return make_discard_request(mddev, bi);
 }

 logical_sector = bi->bi_sector & ~((sector_t)STRIPE_SECTORS-1);
 last_sector = bi->bi_sector + (bi->bi_size>>9);
 bi->bi_next = ((void*)0);
 bi->bi_phys_segments = 1;

 for (;logical_sector < last_sector; logical_sector += STRIPE_SECTORS) {
  DEFINE_WAIT(w);
  int previous;

 retry:
  previous = 0;
  prepare_to_wait(&conf->wait_for_overlap, &w, TASK_UNINTERRUPTIBLE);
  if (unlikely(conf->reshape_progress != MaxSector)) {
   spin_lock_irq(&conf->device_lock);
   if (mddev->reshape_backwards
       ? logical_sector < conf->reshape_progress
       : logical_sector >= conf->reshape_progress) {
    previous = 1;
   } else {
    if (mddev->reshape_backwards
        ? logical_sector < conf->reshape_safe
        : logical_sector >= conf->reshape_safe) {
     spin_unlock_irq(&conf->device_lock);
     schedule();
     goto retry;
    }
   }
   spin_unlock_irq(&conf->device_lock);
  }

  new_sector = raid5_compute_sector(conf, logical_sector,
        previous,
        &dd_idx, ((void*)0));
  pr_debug("raid456: make_request, sector %llu logical %llu\n",
   (unsigned long long)new_sector,
   (unsigned long long)logical_sector);

  sh = get_active_stripe(conf, new_sector, previous,
           (bi->bi_rw&RWA_MASK), 0);
  if (sh) {
   if (unlikely(previous)) {
    int must_retry = 0;
    spin_lock_irq(&conf->device_lock);
    if (mddev->reshape_backwards
        ? logical_sector >= conf->reshape_progress
        : logical_sector < conf->reshape_progress)

     must_retry = 1;
    spin_unlock_irq(&conf->device_lock);
    if (must_retry) {
     release_stripe(sh);
     schedule();
     goto retry;
    }
   }

   if (rw == WRITE &&
       logical_sector >= mddev->suspend_lo &&
       logical_sector < mddev->suspend_hi) {
    release_stripe(sh);




    flush_signals(current);
    prepare_to_wait(&conf->wait_for_overlap,
      &w, TASK_INTERRUPTIBLE);
    if (logical_sector >= mddev->suspend_lo &&
        logical_sector < mddev->suspend_hi)
     schedule();
    goto retry;
   }

   if (test_bit(STRIPE_EXPANDING, &sh->state) ||
       !add_stripe_bio(sh, bi, dd_idx, rw)) {




    md_raid5_unplug_device(conf);
    release_stripe(sh);
    schedule();
    goto retry;
   }
   finish_wait(&conf->wait_for_overlap, &w);
   set_bit(STRIPE_HANDLE, &sh->state);
   clear_bit(STRIPE_DELAYED, &sh->state);
   if (bio_rw_flagged(bi, BIO_RW_SYNCIO) &&
       !test_and_set_bit(STRIPE_PREREAD_ACTIVE, &sh->state))
    atomic_inc(&conf->preread_active_stripes);
   release_stripe(sh);
  } else {

   clear_bit(BIO_UPTODATE, &bi->bi_flags);
   finish_wait(&conf->wait_for_overlap, &w);
   break;
  }

 }

 remaining = raid5_dec_bi_active_stripes(bi);
 if (remaining == 0) {

  if ( rw == WRITE )
   md_write_end(mddev);

  trace_block_bio_complete(bdev_get_queue(bi->bi_bdev),
      bi);
  bio_endio(bi, 0);
 }

 return 0;
}
