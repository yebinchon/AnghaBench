
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 scalar_t__ MK712_CONTROL ;
 int MK712_ENABLE_INT ;
 int MK712_ENABLE_PERIODIC_CONVERSIONS ;
 int MK712_INT_ON_CHANGE_IN_TOUCH_STATUS ;
 int MK712_INT_ON_CONVERSION_COMPLETE ;
 int MK712_POWERUP ;
 scalar_t__ MK712_RATE ;
 scalar_t__ mk712_io ;
 int mk712_lock ;
 int outb (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mk712_open(struct input_dev *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&mk712_lock, flags);

 outb(0, mk712_io + MK712_CONTROL);

 outb(MK712_ENABLE_INT | MK712_INT_ON_CONVERSION_COMPLETE |
  MK712_INT_ON_CHANGE_IN_TOUCH_STATUS |
  MK712_ENABLE_PERIODIC_CONVERSIONS |
  MK712_POWERUP, mk712_io + MK712_CONTROL);

 outb(10, mk712_io + MK712_RATE);

 spin_unlock_irqrestore(&mk712_lock, flags);

 return 0;
}
