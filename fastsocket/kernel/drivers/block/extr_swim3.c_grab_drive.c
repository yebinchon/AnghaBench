
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floppy_state {scalar_t__ state; int lock; int wanted; int wait; } ;
typedef enum swim_state { ____Placeholder_swim_state } swim_state ;


 int EINTR ;
 scalar_t__ available ;
 int current ;
 scalar_t__ idle ;
 int interruptible_sleep_on (int *) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int grab_drive(struct floppy_state *fs, enum swim_state state,
        int interruptible)
{
 unsigned long flags;

 spin_lock_irqsave(&fs->lock, flags);
 if (fs->state != idle) {
  ++fs->wanted;
  while (fs->state != available) {
   if (interruptible && signal_pending(current)) {
    --fs->wanted;
    spin_unlock_irqrestore(&fs->lock, flags);
    return -EINTR;
   }
   interruptible_sleep_on(&fs->wait);
  }
  --fs->wanted;
 }
 fs->state = state;
 spin_unlock_irqrestore(&fs->lock, flags);
 return 0;
}
