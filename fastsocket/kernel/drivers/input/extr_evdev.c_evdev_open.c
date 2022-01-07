
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct evdev_client* private_data; } ;
struct evdev_client {struct evdev* evdev; int buffer_lock; } ;
struct evdev {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int EVDEV_MINORS ;
 int EVDEV_MINOR_BASE ;
 int GFP_KERNEL ;
 int evdev_attach_client (struct evdev*,struct evdev_client*) ;
 int evdev_detach_client (struct evdev*,struct evdev_client*) ;
 int evdev_open_device (struct evdev*) ;
 struct evdev** evdev_table ;
 int evdev_table_mutex ;
 int get_device (int *) ;
 int iminor (struct inode*) ;
 int kfree (struct evdev_client*) ;
 struct evdev_client* kzalloc (int,int ) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int evdev_open(struct inode *inode, struct file *file)
{
 struct evdev *evdev;
 struct evdev_client *client;
 int i = iminor(inode) - EVDEV_MINOR_BASE;
 int error;

 if (i >= EVDEV_MINORS)
  return -ENODEV;

 error = mutex_lock_interruptible(&evdev_table_mutex);
 if (error)
  return error;
 evdev = evdev_table[i];
 if (evdev)
  get_device(&evdev->dev);
 mutex_unlock(&evdev_table_mutex);

 if (!evdev)
  return -ENODEV;

 client = kzalloc(sizeof(struct evdev_client), GFP_KERNEL);
 if (!client) {
  error = -ENOMEM;
  goto err_put_evdev;
 }

 spin_lock_init(&client->buffer_lock);
 client->evdev = evdev;
 evdev_attach_client(evdev, client);

 error = evdev_open_device(evdev);
 if (error)
  goto err_free_client;

 file->private_data = client;
 return 0;

 err_free_client:
 evdev_detach_client(evdev, client);
 kfree(client);
 err_put_evdev:
 put_device(&evdev->dev);
 return error;
}
