
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct evdev_client* private_data; } ;
struct evdev_client {struct evdev* evdev; } ;
struct evdev {int dev; int mutex; struct evdev_client* grab; } ;


 int evdev_close_device (struct evdev*) ;
 int evdev_detach_client (struct evdev*,struct evdev_client*) ;
 int evdev_ungrab (struct evdev*,struct evdev_client*) ;
 int kfree (struct evdev_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;

__attribute__((used)) static int evdev_release(struct inode *inode, struct file *file)
{
 struct evdev_client *client = file->private_data;
 struct evdev *evdev = client->evdev;

 mutex_lock(&evdev->mutex);
 if (evdev->grab == client)
  evdev_ungrab(evdev, client);
 mutex_unlock(&evdev->mutex);

 evdev_detach_client(evdev, client);
 kfree(client);

 evdev_close_device(evdev);
 put_device(&evdev->dev);

 return 0;
}
