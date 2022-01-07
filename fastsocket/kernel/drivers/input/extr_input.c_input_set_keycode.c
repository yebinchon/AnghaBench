
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int (* getkeycode ) (struct input_dev*,int,int*) ;int (* setkeycode ) (struct input_dev*,int,int) ;int event_lock; scalar_t__ sync; int key; int keybit; int evbit; } ;


 int EINVAL ;
 int EV_KEY ;
 int EV_SYN ;
 int KEY_MAX ;
 int SYN_REPORT ;
 scalar_t__ __test_and_clear_bit (int,int ) ;
 int input_pass_event (struct input_dev*,int ,int,int) ;
 int is_event_supported (int,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct input_dev*,int,int*) ;
 int stub2 (struct input_dev*,int,int) ;
 scalar_t__ test_bit (int ,int ) ;

int input_set_keycode(struct input_dev *dev, int scancode, int keycode)
{
 unsigned long flags;
 int old_keycode;
 int retval;

 if (scancode < 0)
  return -EINVAL;

 if (keycode < 0 || keycode > KEY_MAX)
  return -EINVAL;

 spin_lock_irqsave(&dev->event_lock, flags);

 retval = dev->getkeycode(dev, scancode, &old_keycode);
 if (retval)
  goto out;

 retval = dev->setkeycode(dev, scancode, keycode);
 if (retval)
  goto out;





 if (test_bit(EV_KEY, dev->evbit) &&
     !is_event_supported(old_keycode, dev->keybit, KEY_MAX) &&
     __test_and_clear_bit(old_keycode, dev->key)) {

  input_pass_event(dev, EV_KEY, old_keycode, 0);
  if (dev->sync)
   input_pass_event(dev, EV_SYN, SYN_REPORT, 1);
 }

 out:
 spin_unlock_irqrestore(&dev->event_lock, flags);

 return retval;
}
