
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int keylock; int keyup_jiffies; } ;


 int ir_do_keyup (struct rc_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_is_before_eq_jiffies (int ) ;

__attribute__((used)) static void ir_timer_keyup(unsigned long cookie)
{
 struct rc_dev *dev = (struct rc_dev *)cookie;
 unsigned long flags;
 spin_lock_irqsave(&dev->keylock, flags);
 if (time_is_before_eq_jiffies(dev->keyup_jiffies))
  ir_do_keyup(dev);
 spin_unlock_irqrestore(&dev->keylock, flags);
}
