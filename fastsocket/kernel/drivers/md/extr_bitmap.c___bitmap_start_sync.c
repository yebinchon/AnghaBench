
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct bitmap {TYPE_1__ counts; } ;
typedef int sector_t ;
typedef int bitmap_counter_t ;


 scalar_t__ NEEDED (int ) ;
 int NEEDED_MASK ;
 scalar_t__ RESYNC (int ) ;
 int RESYNC_MASK ;
 int * bitmap_get_counter (TYPE_1__*,int,int*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int __bitmap_start_sync(struct bitmap *bitmap, sector_t offset, sector_t *blocks,
          int degraded)
{
 bitmap_counter_t *bmc;
 int rv;
 if (bitmap == ((void*)0)) {
  *blocks = 1024;
  return 1;
 }
 spin_lock_irq(&bitmap->counts.lock);
 bmc = bitmap_get_counter(&bitmap->counts, offset, blocks, 0);
 rv = 0;
 if (bmc) {

  if (RESYNC(*bmc))
   rv = 1;
  else if (NEEDED(*bmc)) {
   rv = 1;
   if (!degraded) {
    *bmc |= RESYNC_MASK;
    *bmc &= ~NEEDED_MASK;
   }
  }
 }
 spin_unlock_irq(&bitmap->counts.lock);
 return rv;
}
