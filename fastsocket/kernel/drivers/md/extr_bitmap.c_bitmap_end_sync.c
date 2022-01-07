
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct bitmap {TYPE_1__ counts; scalar_t__ allclean; } ;
typedef int sector_t ;
typedef int bitmap_counter_t ;


 int NEEDED (int) ;
 int NEEDED_MASK ;
 scalar_t__ RESYNC (int) ;
 int RESYNC_MASK ;
 int* bitmap_get_counter (TYPE_1__*,int,int*,int ) ;
 int bitmap_set_pending (TYPE_1__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void bitmap_end_sync(struct bitmap *bitmap, sector_t offset, sector_t *blocks, int aborted)
{
 bitmap_counter_t *bmc;
 unsigned long flags;

 if (bitmap == ((void*)0)) {
  *blocks = 1024;
  return;
 }
 spin_lock_irqsave(&bitmap->counts.lock, flags);
 bmc = bitmap_get_counter(&bitmap->counts, offset, blocks, 0);
 if (bmc == ((void*)0))
  goto unlock;

 if (RESYNC(*bmc)) {
  *bmc &= ~RESYNC_MASK;

  if (!NEEDED(*bmc) && aborted)
   *bmc |= NEEDED_MASK;
  else {
   if (*bmc <= 2) {
    bitmap_set_pending(&bitmap->counts, offset);
    bitmap->allclean = 0;
   }
  }
 }
 unlock:
 spin_unlock_irqrestore(&bitmap->counts.lock, flags);
}
