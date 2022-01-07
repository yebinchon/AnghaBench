
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int event_lock; scalar_t__* rep; int timer; scalar_t__ sync; int repeat_key; int keybit; int key; } ;


 int EV_KEY ;
 int EV_SYN ;
 int KEY_MAX ;
 size_t REP_PERIOD ;
 int SYN_REPORT ;
 int input_pass_event (struct input_dev*,int ,int ,int) ;
 scalar_t__ is_event_supported (int ,int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void input_repeat_key(unsigned long data)
{
 struct input_dev *dev = (void *) data;
 unsigned long flags;

 spin_lock_irqsave(&dev->event_lock, flags);

 if (test_bit(dev->repeat_key, dev->key) &&
     is_event_supported(dev->repeat_key, dev->keybit, KEY_MAX)) {

  input_pass_event(dev, EV_KEY, dev->repeat_key, 2);

  if (dev->sync) {






   input_pass_event(dev, EV_SYN, SYN_REPORT, 1);
  }

  if (dev->rep[REP_PERIOD])
   mod_timer(&dev->timer, jiffies +
     msecs_to_jiffies(dev->rep[REP_PERIOD]));
 }

 spin_unlock_irqrestore(&dev->event_lock, flags);
}
