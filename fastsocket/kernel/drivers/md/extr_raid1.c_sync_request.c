
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r1conf {scalar_t__ fullsync; int raid_disks; int recovery_disabled; TYPE_1__* mirrors; scalar_t__ next_resync; int r1buf_pool; scalar_t__ nr_waiting; } ;
struct r1bio {int read_disk; struct bio** bios; int remaining; scalar_t__ sectors; scalar_t__ state; scalar_t__ sector; struct mddev* mddev; } ;
struct page {int dummy; } ;
struct mddev {scalar_t__ dev_sectors; scalar_t__ curr_resync; scalar_t__ recovery_cp; scalar_t__ resync_max; scalar_t__ recovery; int * bitmap; int recovery_disabled; scalar_t__ flags; struct r1conf* private; } ;
struct md_rdev {scalar_t__ data_offset; int bdev; int nr_pending; scalar_t__ flags; } ;
struct bio {int bi_flags; int bi_comp_cpu; size_t bi_vcnt; void* bi_end_io; int bi_bdev; scalar_t__ bi_size; TYPE_2__* bi_io_vec; struct r1bio* bi_private; scalar_t__ bi_sector; void* bi_rw; scalar_t__ bi_phys_segments; scalar_t__ bi_idx; int * bi_next; } ;
typedef scalar_t__ sector_t ;
struct TYPE_4__ {struct page* bv_page; } ;
struct TYPE_3__ {struct md_rdev* rdev; } ;


 int BIO_POOL_MASK ;
 int BIO_SEG_VALID ;
 int BIO_UPTODATE ;
 int BUG_ON (int) ;
 int Faulty ;
 int GFP_NOIO ;
 int In_sync ;
 int MD_CHANGE_DEVS ;
 int MD_RECOVERY_CHECK ;
 int MD_RECOVERY_INTR ;
 int MD_RECOVERY_REQUESTED ;
 int MD_RECOVERY_SYNC ;
 scalar_t__ MaxSector ;
 int PAGE_SIZE ;
 int R1BIO_IsSync ;
 void* READ ;
 scalar_t__ RESYNC_PAGES ;
 int RESYNC_SECTORS ;
 void* WRITE ;
 int WriteErrorSeen ;
 int WriteMostly ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 scalar_t__ bio_add_page (struct bio*,struct page*,int,int ) ;
 int bitmap_close_sync (int *) ;
 int bitmap_cond_end_sync (int *,scalar_t__) ;
 int bitmap_end_sync (int *,scalar_t__,scalar_t__*,int) ;
 int bitmap_start_sync (int *,scalar_t__,scalar_t__*,int) ;
 int close_sync (struct r1conf*) ;
 void* end_sync_read ;
 void* end_sync_write ;
 int generic_make_request (struct bio*) ;
 scalar_t__ init_resync (struct r1conf*) ;
 scalar_t__ is_badblock (struct md_rdev*,scalar_t__,int,scalar_t__*,int*) ;
 int md_sync_acct (int ,scalar_t__) ;
 struct r1bio* mempool_alloc (int ,int ) ;
 int msleep_interruptible (int) ;
 int put_buf (struct r1bio*) ;
 int raise_barrier (struct r1conf*) ;
 struct md_rdev* rcu_dereference (struct md_rdev*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ rdev_set_badblocks (struct md_rdev*,scalar_t__,int,int ) ;
 int set_bit (int ,scalar_t__*) ;
 scalar_t__ test_bit (int ,scalar_t__*) ;

__attribute__((used)) static sector_t sync_request(struct mddev *mddev, sector_t sector_nr, int *skipped, int go_faster)
{
 struct r1conf *conf = mddev->private;
 struct r1bio *r1_bio;
 struct bio *bio;
 sector_t max_sector, nr_sectors;
 int disk = -1;
 int i;
 int wonly = -1;
 int write_targets = 0, read_targets = 0;
 sector_t sync_blocks;
 int still_degraded = 0;
 int good_sectors = RESYNC_SECTORS;
 int min_bad = 0;

 if (!conf->r1buf_pool)
  if (init_resync(conf))
   return 0;

 max_sector = mddev->dev_sectors;
 if (sector_nr >= max_sector) {





  if (mddev->curr_resync < max_sector)
   bitmap_end_sync(mddev->bitmap, mddev->curr_resync,
      &sync_blocks, 1);
  else
   conf->fullsync = 0;

  bitmap_close_sync(mddev->bitmap);
  close_sync(conf);
  return 0;
 }

 if (mddev->bitmap == ((void*)0) &&
     mddev->recovery_cp == MaxSector &&
     !test_bit(MD_RECOVERY_REQUESTED, &mddev->recovery) &&
     conf->fullsync == 0) {
  *skipped = 1;
  return max_sector - sector_nr;
 }



 if (!bitmap_start_sync(mddev->bitmap, sector_nr, &sync_blocks, 1) &&
     !conf->fullsync && !test_bit(MD_RECOVERY_REQUESTED, &mddev->recovery)) {

  *skipped = 1;
  return sync_blocks;
 }





 if (!go_faster && conf->nr_waiting)
  msleep_interruptible(1000);

 bitmap_cond_end_sync(mddev->bitmap, sector_nr);
 r1_bio = mempool_alloc(conf->r1buf_pool, GFP_NOIO);
 raise_barrier(conf);

 conf->next_resync = sector_nr;

 rcu_read_lock();
 r1_bio->mddev = mddev;
 r1_bio->sector = sector_nr;
 r1_bio->state = 0;
 set_bit(R1BIO_IsSync, &r1_bio->state);

 for (i = 0; i < conf->raid_disks * 2; i++) {
  struct md_rdev *rdev;
  bio = r1_bio->bios[i];


  bio->bi_next = ((void*)0);
  bio->bi_flags &= ~(BIO_POOL_MASK-1);
  bio->bi_flags |= 1 << BIO_UPTODATE;
  bio->bi_comp_cpu = -1;
  bio->bi_rw = READ;
  bio->bi_vcnt = 0;
  bio->bi_idx = 0;
  bio->bi_phys_segments = 0;
  bio->bi_size = 0;
  bio->bi_end_io = ((void*)0);
  bio->bi_private = ((void*)0);

  rdev = rcu_dereference(conf->mirrors[i].rdev);
  if (rdev == ((void*)0) ||
      test_bit(Faulty, &rdev->flags)) {
   if (i < conf->raid_disks)
    still_degraded = 1;
  } else if (!test_bit(In_sync, &rdev->flags)) {
   bio->bi_rw = WRITE;
   bio->bi_end_io = end_sync_write;
   write_targets ++;
  } else {

   sector_t first_bad = MaxSector;
   int bad_sectors;

   if (is_badblock(rdev, sector_nr, good_sectors,
     &first_bad, &bad_sectors)) {
    if (first_bad > sector_nr)
     good_sectors = first_bad - sector_nr;
    else {
     bad_sectors -= (sector_nr - first_bad);
     if (min_bad == 0 ||
         min_bad > bad_sectors)
      min_bad = bad_sectors;
    }
   }
   if (sector_nr < first_bad) {
    if (test_bit(WriteMostly, &rdev->flags)) {
     if (wonly < 0)
      wonly = i;
    } else {
     if (disk < 0)
      disk = i;
    }
    bio->bi_rw = READ;
    bio->bi_end_io = end_sync_read;
    read_targets++;
   } else if (!test_bit(WriteErrorSeen, &rdev->flags) &&
    test_bit(MD_RECOVERY_SYNC, &mddev->recovery) &&
    !test_bit(MD_RECOVERY_CHECK, &mddev->recovery)) {






    bio->bi_rw = WRITE;
    bio->bi_end_io = end_sync_write;
    write_targets++;
   }
  }
  if (bio->bi_end_io) {
   atomic_inc(&rdev->nr_pending);
   bio->bi_sector = sector_nr + rdev->data_offset;
   bio->bi_bdev = rdev->bdev;
   bio->bi_private = r1_bio;
  }
 }
 rcu_read_unlock();
 if (disk < 0)
  disk = wonly;
 r1_bio->read_disk = disk;

 if (read_targets == 0 && min_bad > 0) {



  int ok = 1;
  for (i = 0 ; i < conf->raid_disks * 2 ; i++)
   if (r1_bio->bios[i]->bi_end_io == end_sync_write) {
    struct md_rdev *rdev = conf->mirrors[i].rdev;
    ok = rdev_set_badblocks(rdev, sector_nr,
       min_bad, 0
     ) && ok;
   }
  set_bit(MD_CHANGE_DEVS, &mddev->flags);
  *skipped = 1;
  put_buf(r1_bio);

  if (!ok) {





   conf->recovery_disabled = mddev->recovery_disabled;
   set_bit(MD_RECOVERY_INTR, &mddev->recovery);
   return 0;
  } else
   return min_bad;

 }
 if (min_bad > 0 && min_bad < good_sectors) {


  good_sectors = min_bad;
 }

 if (test_bit(MD_RECOVERY_SYNC, &mddev->recovery) && read_targets > 0)

  write_targets += read_targets-1;

 if (write_targets == 0 || read_targets == 0) {



  sector_t rv;
  if (min_bad > 0)
   max_sector = sector_nr + min_bad;
  rv = max_sector - sector_nr;
  *skipped = 1;
  put_buf(r1_bio);
  return rv;
 }

 if (max_sector > mddev->resync_max)
  max_sector = mddev->resync_max;
 if (max_sector > sector_nr + good_sectors)
  max_sector = sector_nr + good_sectors;
 nr_sectors = 0;
 sync_blocks = 0;
 do {
  struct page *page;
  int len = PAGE_SIZE;
  if (sector_nr + (len>>9) > max_sector)
   len = (max_sector - sector_nr) << 9;
  if (len == 0)
   break;
  if (sync_blocks == 0) {
   if (!bitmap_start_sync(mddev->bitmap, sector_nr,
            &sync_blocks, still_degraded) &&
       !conf->fullsync &&
       !test_bit(MD_RECOVERY_REQUESTED, &mddev->recovery))
    break;
   BUG_ON(sync_blocks < (PAGE_SIZE>>9));
   if ((len >> 9) > sync_blocks)
    len = sync_blocks<<9;
  }

  for (i = 0 ; i < conf->raid_disks * 2; i++) {
   bio = r1_bio->bios[i];
   if (bio->bi_end_io) {
    page = bio->bi_io_vec[bio->bi_vcnt].bv_page;
    if (bio_add_page(bio, page, len, 0) == 0) {

     bio->bi_io_vec[bio->bi_vcnt].bv_page = page;
     while (i > 0) {
      i--;
      bio = r1_bio->bios[i];
      if (bio->bi_end_io==((void*)0))
       continue;

      bio->bi_vcnt--;
      bio->bi_size -= len;
      bio->bi_flags &= ~(1<< BIO_SEG_VALID);
     }
     goto bio_full;
    }
   }
  }
  nr_sectors += len>>9;
  sector_nr += len>>9;
  sync_blocks -= (len>>9);
 } while (r1_bio->bios[disk]->bi_vcnt < RESYNC_PAGES);
 bio_full:
 r1_bio->sectors = nr_sectors;




 if (test_bit(MD_RECOVERY_REQUESTED, &mddev->recovery)) {
  atomic_set(&r1_bio->remaining, read_targets);
  for (i = 0; i < conf->raid_disks * 2 && read_targets; i++) {
   bio = r1_bio->bios[i];
   if (bio->bi_end_io == end_sync_read) {
    read_targets--;
    md_sync_acct(bio->bi_bdev, nr_sectors);
    generic_make_request(bio);
   }
  }
 } else {
  atomic_set(&r1_bio->remaining, 1);
  bio = r1_bio->bios[r1_bio->read_disk];
  md_sync_acct(bio->bi_bdev, nr_sectors);
  generic_make_request(bio);

 }
 return nr_sectors;
}
