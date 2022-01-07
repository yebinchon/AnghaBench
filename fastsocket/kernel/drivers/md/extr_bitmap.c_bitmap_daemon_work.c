
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ external; int mutex; scalar_t__ daemon_sleep; } ;
struct mddev {TYPE_4__ bitmap_info; TYPE_3__* thread; struct bitmap* bitmap; } ;
struct bitmap_counts {unsigned long chunks; int chunkshift; int lock; TYPE_1__* bp; } ;
struct TYPE_9__ {unsigned long file_pages; int * filemap; int sb_page; } ;
struct bitmap {int allclean; TYPE_2__ storage; int flags; scalar_t__ need_sync; struct bitmap_counts counts; int events_cleared; scalar_t__ daemon_lastrun; } ;
typedef int sector_t ;
struct TYPE_12__ {int events_cleared; } ;
typedef TYPE_5__ bitmap_super_t ;
typedef int bitmap_counter_t ;
struct TYPE_10__ {scalar_t__ timeout; } ;
struct TYPE_8__ {scalar_t__ pending; } ;


 int BITMAP_PAGE_DIRTY ;
 int BITMAP_PAGE_NEEDWRITE ;
 int BITMAP_PAGE_PENDING ;
 int BITMAP_STALE ;
 int KM_USER0 ;
 scalar_t__ MAX_SCHEDULE_TIMEOUT ;
 unsigned long PAGE_COUNTER_MASK ;
 scalar_t__ PAGE_COUNTER_RATIO ;
 unsigned long PAGE_COUNTER_SHIFT ;
 int bitmap_count_page (struct bitmap_counts*,int,int) ;
 int bitmap_file_clear_bit (struct bitmap*,int) ;
 int* bitmap_get_counter (struct bitmap_counts*,int,int*,int ) ;
 int bitmap_set_pending (struct bitmap_counts*,int) ;
 int cpu_to_le64 (int ) ;
 scalar_t__ jiffies ;
 TYPE_5__* kmap_atomic (int ,int ) ;
 int kunmap_atomic (TYPE_5__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_page_attr (struct bitmap*,unsigned long,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_and_clear_page_attr (struct bitmap*,unsigned long,int ) ;
 int test_bit (int ,int *) ;
 scalar_t__ test_page_attr (struct bitmap*,unsigned long,int ) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;
 int write_page (struct bitmap*,int ,int ) ;

void bitmap_daemon_work(struct mddev *mddev)
{
 struct bitmap *bitmap;
 unsigned long j;
 unsigned long nextpage;
 sector_t blocks;
 struct bitmap_counts *counts;




 mutex_lock(&mddev->bitmap_info.mutex);
 bitmap = mddev->bitmap;
 if (bitmap == ((void*)0)) {
  mutex_unlock(&mddev->bitmap_info.mutex);
  return;
 }
 if (time_before(jiffies, bitmap->daemon_lastrun
   + mddev->bitmap_info.daemon_sleep))
  goto done;

 bitmap->daemon_lastrun = jiffies;
 if (bitmap->allclean) {
  mddev->thread->timeout = MAX_SCHEDULE_TIMEOUT;
  goto done;
 }
 bitmap->allclean = 1;





 for (j = 0; j < bitmap->storage.file_pages; j++)
  if (test_and_clear_page_attr(bitmap, j,
          BITMAP_PAGE_PENDING))
   set_page_attr(bitmap, j,
          BITMAP_PAGE_NEEDWRITE);

 if (bitmap->need_sync &&
     mddev->bitmap_info.external == 0) {


  bitmap_super_t *sb;
  bitmap->need_sync = 0;
  if (bitmap->storage.filemap) {
   sb = kmap_atomic(bitmap->storage.sb_page, KM_USER0);
   sb->events_cleared =
    cpu_to_le64(bitmap->events_cleared);
   kunmap_atomic(sb, KM_USER0);
   set_page_attr(bitmap, 0,
          BITMAP_PAGE_NEEDWRITE);
  }
 }



 counts = &bitmap->counts;
 spin_lock_irq(&counts->lock);
 nextpage = 0;
 for (j = 0; j < counts->chunks; j++) {
  bitmap_counter_t *bmc;
  sector_t block = (sector_t)j << counts->chunkshift;

  if (j == nextpage) {
   nextpage += PAGE_COUNTER_RATIO;
   if (!counts->bp[j >> PAGE_COUNTER_SHIFT].pending) {
    j |= PAGE_COUNTER_MASK;
    continue;
   }
   counts->bp[j >> PAGE_COUNTER_SHIFT].pending = 0;
  }
  bmc = bitmap_get_counter(counts,
      block,
      &blocks, 0);

  if (!bmc) {
   j |= PAGE_COUNTER_MASK;
   continue;
  }
  if (*bmc == 1 && !bitmap->need_sync) {

   *bmc = 0;
   bitmap_count_page(counts, block, -1);
   bitmap_file_clear_bit(bitmap, block);
  } else if (*bmc && *bmc <= 2) {
   *bmc = 1;
   bitmap_set_pending(counts, block);
   bitmap->allclean = 0;
  }
 }
 spin_unlock_irq(&counts->lock);
 for (j = 0;
      j < bitmap->storage.file_pages
       && !test_bit(BITMAP_STALE, &bitmap->flags);
      j++) {

  if (test_page_attr(bitmap, j,
       BITMAP_PAGE_DIRTY))

   break;
  if (test_and_clear_page_attr(bitmap, j,
          BITMAP_PAGE_NEEDWRITE)) {
   write_page(bitmap, bitmap->storage.filemap[j], 0);
  }
 }

 done:
 if (bitmap->allclean == 0)
  mddev->thread->timeout =
   mddev->bitmap_info.daemon_sleep;
 mutex_unlock(&mddev->bitmap_info.mutex);
}
