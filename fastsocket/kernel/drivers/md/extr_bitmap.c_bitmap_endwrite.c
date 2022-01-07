
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int lock; } ;
struct bitmap {scalar_t__ events_cleared; int need_sync; TYPE_3__ counts; scalar_t__ allclean; int overflow_wait; int sysfs_can_clear; TYPE_2__* mddev; int behind_writes; int behind_wait; } ;
typedef unsigned long sector_t ;
typedef int bitmap_counter_t ;
struct TYPE_5__ {int max_write_behind; } ;
struct TYPE_6__ {scalar_t__ events; int degraded; TYPE_1__ bitmap_info; } ;


 scalar_t__ COUNTER (int) ;
 scalar_t__ COUNTER_MAX ;
 int NEEDED (int) ;
 int NEEDED_MASK ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int* bitmap_get_counter (TYPE_3__*,unsigned long,unsigned long*,int ) ;
 int bitmap_set_pending (TYPE_3__*,unsigned long) ;
 int pr_debug (char*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sysfs_notify_dirent_safe (int ) ;
 int wake_up (int *) ;

void bitmap_endwrite(struct bitmap *bitmap, sector_t offset, unsigned long sectors,
       int success, int behind)
{
 if (!bitmap)
  return;
 if (behind) {
  if (atomic_dec_and_test(&bitmap->behind_writes))
   wake_up(&bitmap->behind_wait);
  pr_debug("dec write-behind count %d/%lu\n",
    atomic_read(&bitmap->behind_writes),
    bitmap->mddev->bitmap_info.max_write_behind);
 }

 while (sectors) {
  sector_t blocks;
  unsigned long flags;
  bitmap_counter_t *bmc;

  spin_lock_irqsave(&bitmap->counts.lock, flags);
  bmc = bitmap_get_counter(&bitmap->counts, offset, &blocks, 0);
  if (!bmc) {
   spin_unlock_irqrestore(&bitmap->counts.lock, flags);
   return;
  }

  if (success && !bitmap->mddev->degraded &&
      bitmap->events_cleared < bitmap->mddev->events) {
   bitmap->events_cleared = bitmap->mddev->events;
   bitmap->need_sync = 1;
   sysfs_notify_dirent_safe(bitmap->sysfs_can_clear);
  }

  if (!success && !NEEDED(*bmc))
   *bmc |= NEEDED_MASK;

  if (COUNTER(*bmc) == COUNTER_MAX)
   wake_up(&bitmap->overflow_wait);

  (*bmc)--;
  if (*bmc <= 2) {
   bitmap_set_pending(&bitmap->counts, offset);
   bitmap->allclean = 0;
  }
  spin_unlock_irqrestore(&bitmap->counts.lock, flags);
  offset += blocks;
  if (sectors > blocks)
   sectors -= blocks;
  else
   sectors = 0;
 }
}
