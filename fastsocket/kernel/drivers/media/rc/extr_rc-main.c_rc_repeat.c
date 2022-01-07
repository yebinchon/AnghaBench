
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int keylock; scalar_t__ keyup_jiffies; int timer_keyup; int keypressed; int last_scancode; int input_dev; } ;


 int EV_MSC ;
 int IR_KEYPRESS_TIMEOUT ;
 int MSC_SCAN ;
 int input_event (int ,int ,int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rc_repeat(struct rc_dev *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->keylock, flags);

 input_event(dev->input_dev, EV_MSC, MSC_SCAN, dev->last_scancode);

 if (!dev->keypressed)
  goto out;

 dev->keyup_jiffies = jiffies + msecs_to_jiffies(IR_KEYPRESS_TIMEOUT);
 mod_timer(&dev->timer_keyup, dev->keyup_jiffies);

out:
 spin_unlock_irqrestore(&dev->keylock, flags);
}
