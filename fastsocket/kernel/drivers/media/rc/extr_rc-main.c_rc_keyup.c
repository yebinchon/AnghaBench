
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int keylock; } ;


 int ir_do_keyup (struct rc_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rc_keyup(struct rc_dev *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->keylock, flags);
 ir_do_keyup(dev);
 spin_unlock_irqrestore(&dev->keylock, flags);
}
