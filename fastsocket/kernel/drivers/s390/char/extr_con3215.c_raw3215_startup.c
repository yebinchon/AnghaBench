
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {int flags; int cdev; scalar_t__ line_pos; } ;


 int RAW3215_ACTIVE ;
 int get_ccwdev_lock (int ) ;
 int raw3215_try_io (struct raw3215_info*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int raw3215_startup(struct raw3215_info *raw)
{
 unsigned long flags;

 if (raw->flags & RAW3215_ACTIVE)
  return 0;
 raw->line_pos = 0;
 raw->flags |= RAW3215_ACTIVE;
 spin_lock_irqsave(get_ccwdev_lock(raw->cdev), flags);
 raw3215_try_io(raw);
 spin_unlock_irqrestore(get_ccwdev_lock(raw->cdev), flags);

 return 0;
}
