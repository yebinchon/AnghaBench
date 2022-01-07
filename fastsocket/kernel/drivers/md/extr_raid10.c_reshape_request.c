
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int chunk_mask; } ;
struct r10conf {void* reshape_progress; int reshape_safe; int offset_diff; int copies; TYPE_1__* mirrors; TYPE_4__ geo; int r10buf_pool; scalar_t__ reshape_checkpoint; TYPE_4__ prev; } ;
struct r10bio {int sector; scalar_t__ state; int sectors; size_t read_slot; int remaining; TYPE_3__* devs; struct bio* master_bio; struct mddev* mddev; } ;
struct page {int dummy; } ;
struct mddev {int curr_resync_completed; int reshape_position; scalar_t__ flags; scalar_t__ recovery; scalar_t__ reshape_backwards; int sb_wait; int thread; int kobj; struct r10conf* private; } ;
struct md_rdev {scalar_t__ flags; scalar_t__ new_data_offset; int bdev; scalar_t__ data_offset; } ;
struct bio {int bi_flags; int bi_size; struct bio* bi_next; int bi_bdev; scalar_t__ bi_vcnt; TYPE_2__* bi_io_vec; scalar_t__ bi_idx; int bi_rw; int bi_end_io; struct r10bio* bi_private; scalar_t__ bi_sector; } ;
typedef int sector_t ;
struct TYPE_9__ {size_t devnum; struct bio* bio; scalar_t__ addr; struct bio* repl_bio; } ;
struct TYPE_8__ {struct page* bv_page; } ;
struct TYPE_7__ {struct md_rdev* rdev; struct md_rdev* replacement; } ;


 int BIO_POOL_MASK ;
 int BIO_SEG_VALID ;
 int BIO_UPTODATE ;
 int BUG_ON (int) ;
 int Faulty ;
 int GFP_KERNEL ;
 int GFP_NOIO ;
 int HZ ;
 int MD_CHANGE_DEVS ;
 int MD_RECOVERY_INTR ;
 int PAGE_SIZE ;
 int R10BIO_IsReshape ;
 int R10BIO_Previous ;
 int READ ;
 int RESYNC_BLOCK_SIZE ;
 int RESYNC_PAGES ;
 int WRITE ;
 int __raid10_find_phys (TYPE_4__*,struct r10bio*) ;
 int allow_barrier (struct r10conf*) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 scalar_t__ bio_add_page (struct bio*,struct page*,int,int ) ;
 struct bio* bio_alloc_mddev (int ,int ,struct mddev*) ;
 int end_reshape_write ;
 int end_sync_read ;
 int first_dev_address (int,TYPE_4__*) ;
 int generic_make_request (struct bio*) ;
 scalar_t__ jiffies ;
 scalar_t__ kthread_should_stop () ;
 int last_dev_address (int,TYPE_4__*) ;
 int md_sync_acct (int ,int) ;
 int md_wakeup_thread (int ) ;
 struct r10bio* mempool_alloc (int ,int ) ;
 void* raid10_size (struct mddev*,int ,int ) ;
 int raise_barrier (struct r10conf*,int) ;
 struct md_rdev* read_balance (struct r10conf*,struct r10bio*,int*) ;
 int set_bit (int ,scalar_t__*) ;
 int sysfs_notify (int *,int *,char*) ;
 scalar_t__ test_bit (int ,scalar_t__*) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int wait_barrier (struct r10conf*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static sector_t reshape_request(struct mddev *mddev, sector_t sector_nr,
    int *skipped)
{
 struct r10conf *conf = mddev->private;
 struct r10bio *r10_bio;
 sector_t next, safe, last;
 int max_sectors;
 int nr_sectors;
 int s;
 struct md_rdev *rdev;
 int need_flush = 0;
 struct bio *blist;
 struct bio *bio, *read_bio;
 int sectors_done = 0;

 if (sector_nr == 0) {

  if (mddev->reshape_backwards &&
      conf->reshape_progress < raid10_size(mddev, 0, 0)) {
   sector_nr = (raid10_size(mddev, 0, 0)
         - conf->reshape_progress);
  } else if (!mddev->reshape_backwards &&
      conf->reshape_progress > 0)
   sector_nr = conf->reshape_progress;
  if (sector_nr) {
   mddev->curr_resync_completed = sector_nr;
   sysfs_notify(&mddev->kobj, ((void*)0), "sync_completed");
   *skipped = 1;
   return sector_nr;
  }
 }





 if (mddev->reshape_backwards) {



  next = first_dev_address(conf->reshape_progress - 1,
      &conf->geo);




  safe = last_dev_address(conf->reshape_safe - 1,
     &conf->prev);

  if (next + conf->offset_diff < safe)
   need_flush = 1;

  last = conf->reshape_progress - 1;
  sector_nr = last & ~(sector_t)(conf->geo.chunk_mask
            & conf->prev.chunk_mask);
  if (sector_nr + RESYNC_BLOCK_SIZE/512 < last)
   sector_nr = last + 1 - RESYNC_BLOCK_SIZE/512;
 } else {



  next = last_dev_address(conf->reshape_progress, &conf->geo);




  safe = first_dev_address(conf->reshape_safe, &conf->prev);




  if (next > safe + conf->offset_diff)
   need_flush = 1;

  sector_nr = conf->reshape_progress;
  last = sector_nr | (conf->geo.chunk_mask
         & conf->prev.chunk_mask);

  if (sector_nr + RESYNC_BLOCK_SIZE/512 <= last)
   last = sector_nr + RESYNC_BLOCK_SIZE/512 - 1;
 }

 if (need_flush ||
     time_after(jiffies, conf->reshape_checkpoint + 10*HZ)) {

  wait_barrier(conf);
  mddev->reshape_position = conf->reshape_progress;
  if (mddev->reshape_backwards)
   mddev->curr_resync_completed = raid10_size(mddev, 0, 0)
    - conf->reshape_progress;
  else
   mddev->curr_resync_completed = conf->reshape_progress;
  conf->reshape_checkpoint = jiffies;
  set_bit(MD_CHANGE_DEVS, &mddev->flags);
  md_wakeup_thread(mddev->thread);
  wait_event(mddev->sb_wait, mddev->flags == 0 ||
      kthread_should_stop());
  conf->reshape_safe = mddev->reshape_position;
  allow_barrier(conf);
 }

read_more:

 r10_bio = mempool_alloc(conf->r10buf_pool, GFP_NOIO);
 raise_barrier(conf, sectors_done != 0);
 atomic_set(&r10_bio->remaining, 0);
 r10_bio->mddev = mddev;
 r10_bio->sector = sector_nr;
 set_bit(R10BIO_IsReshape, &r10_bio->state);
 r10_bio->sectors = last - sector_nr + 1;
 rdev = read_balance(conf, r10_bio, &max_sectors);
 BUG_ON(!test_bit(R10BIO_Previous, &r10_bio->state));

 if (!rdev) {




  set_bit(MD_RECOVERY_INTR, &mddev->recovery);
  return sectors_done;
 }

 read_bio = bio_alloc_mddev(GFP_KERNEL, RESYNC_PAGES, mddev);

 read_bio->bi_bdev = rdev->bdev;
 read_bio->bi_sector = (r10_bio->devs[r10_bio->read_slot].addr
          + rdev->data_offset);
 read_bio->bi_private = r10_bio;
 read_bio->bi_end_io = end_sync_read;
 read_bio->bi_rw = READ;
 read_bio->bi_flags &= ~(BIO_POOL_MASK - 1);
 read_bio->bi_flags |= 1 << BIO_UPTODATE;
 read_bio->bi_vcnt = 0;
 read_bio->bi_idx = 0;
 read_bio->bi_size = 0;
 r10_bio->master_bio = read_bio;
 r10_bio->read_slot = r10_bio->devs[r10_bio->read_slot].devnum;


 __raid10_find_phys(&conf->geo, r10_bio);

 blist = read_bio;
 read_bio->bi_next = ((void*)0);

 for (s = 0; s < conf->copies*2; s++) {
  struct bio *b;
  int d = r10_bio->devs[s/2].devnum;
  struct md_rdev *rdev2;
  if (s&1) {
   rdev2 = conf->mirrors[d].replacement;
   b = r10_bio->devs[s/2].repl_bio;
  } else {
   rdev2 = conf->mirrors[d].rdev;
   b = r10_bio->devs[s/2].bio;
  }
  if (!rdev2 || test_bit(Faulty, &rdev2->flags))
   continue;
  b->bi_bdev = rdev2->bdev;
  b->bi_sector = r10_bio->devs[s/2].addr + rdev2->new_data_offset;
  b->bi_private = r10_bio;
  b->bi_end_io = end_reshape_write;
  b->bi_rw = WRITE;
  b->bi_flags &= ~(BIO_POOL_MASK - 1);
  b->bi_flags |= 1 << BIO_UPTODATE;
  b->bi_next = blist;
  b->bi_vcnt = 0;
  b->bi_idx = 0;
  b->bi_size = 0;
  blist = b;
 }



 nr_sectors = 0;
 for (s = 0 ; s < max_sectors; s += PAGE_SIZE >> 9) {
  struct page *page = r10_bio->devs[0].bio->bi_io_vec[s/(PAGE_SIZE>>9)].bv_page;
  int len = (max_sectors - s) << 9;
  if (len > PAGE_SIZE)
   len = PAGE_SIZE;
  for (bio = blist; bio ; bio = bio->bi_next) {
   struct bio *bio2;
   if (bio_add_page(bio, page, len, 0))
    continue;


   for (bio2 = blist;
        bio2 && bio2 != bio;
        bio2 = bio2->bi_next) {

    bio2->bi_vcnt--;
    bio2->bi_size -= len;
    bio2->bi_flags &= ~(1<<BIO_SEG_VALID);
   }
   goto bio_full;
  }
  sector_nr += len >> 9;
  nr_sectors += len >> 9;
 }
bio_full:
 r10_bio->sectors = nr_sectors;


 md_sync_acct(read_bio->bi_bdev, r10_bio->sectors);
 atomic_inc(&r10_bio->remaining);
 read_bio->bi_next = ((void*)0);
 generic_make_request(read_bio);
 sector_nr += nr_sectors;
 sectors_done += nr_sectors;
 if (sector_nr <= last)
  goto read_more;




 if (mddev->reshape_backwards)
  conf->reshape_progress -= sectors_done;
 else
  conf->reshape_progress += sectors_done;

 return sectors_done;
}
