
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {scalar_t__ count; int cdev; int flags; } ;


 int RAW3215_FLUSHING ;
 int get_ccwdev_lock (int ) ;
 int raw3215_try_io (struct raw3215_info*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void raw3215_flush_buffer(struct raw3215_info *raw)
{
 unsigned long flags;

 spin_lock_irqsave(get_ccwdev_lock(raw->cdev), flags);
 if (raw->count > 0) {
  raw->flags |= RAW3215_FLUSHING;
  raw3215_try_io(raw);
  raw->flags &= ~RAW3215_FLUSHING;
 }
 spin_unlock_irqrestore(get_ccwdev_lock(raw->cdev), flags);
}
