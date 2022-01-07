
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {int open; struct input_dev* dev; } ;
struct input_dev {int mutex; int (* close ) (struct input_dev*) ;int users; } ;


 int __input_release_device (struct input_handle*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct input_dev*) ;
 int synchronize_rcu () ;

void input_close_device(struct input_handle *handle)
{
 struct input_dev *dev = handle->dev;

 mutex_lock(&dev->mutex);

 __input_release_device(handle);

 if (!--dev->users && dev->close)
  dev->close(dev);

 if (!--handle->open) {





  synchronize_rcu();
 }

 mutex_unlock(&dev->mutex);
}
