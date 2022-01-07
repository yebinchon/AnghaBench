
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {int open; struct input_dev* dev; } ;
struct input_dev {int (* open ) (struct input_dev*) ;int mutex; int users; scalar_t__ going_away; } ;


 int ENODEV ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct input_dev*) ;
 int synchronize_rcu () ;

int input_open_device(struct input_handle *handle)
{
 struct input_dev *dev = handle->dev;
 int retval;

 retval = mutex_lock_interruptible(&dev->mutex);
 if (retval)
  return retval;

 if (dev->going_away) {
  retval = -ENODEV;
  goto out;
 }

 handle->open++;

 if (!dev->users++ && dev->open)
  retval = dev->open(dev);

 if (retval) {
  dev->users--;
  if (!--handle->open) {




   synchronize_rcu();
  }
 }

 out:
 mutex_unlock(&dev->mutex);
 return retval;
}
