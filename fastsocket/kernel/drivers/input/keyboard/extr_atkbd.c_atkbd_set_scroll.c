
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct atkbd {unsigned long scroll; struct input_dev* dev; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENOMEM ;
 int atkbd_set_device_attrs (struct atkbd*) ;
 int atkbd_set_keycode_table (struct atkbd*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_unregister_device (struct input_dev*) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t atkbd_set_scroll(struct atkbd *atkbd, const char *buf, size_t count)
{
 struct input_dev *old_dev, *new_dev;
 unsigned long value;
 int err;
 unsigned char old_scroll;

 if (strict_strtoul(buf, 10, &value) || value > 1)
  return -EINVAL;

 if (atkbd->scroll != value) {
  old_dev = atkbd->dev;
  old_scroll = atkbd->scroll;

  new_dev = input_allocate_device();
  if (!new_dev)
   return -ENOMEM;

  atkbd->dev = new_dev;
  atkbd->scroll = value;
  atkbd_set_keycode_table(atkbd);
  atkbd_set_device_attrs(atkbd);

  err = input_register_device(atkbd->dev);
  if (err) {
   input_free_device(new_dev);

   atkbd->scroll = old_scroll;
   atkbd->dev = old_dev;
   atkbd_set_keycode_table(atkbd);
   atkbd_set_device_attrs(atkbd);

   return err;
  }
  input_unregister_device(old_dev);
 }
 return count;
}
