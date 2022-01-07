
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct joydev_client {struct joydev* joydev; int buffer_lock; } ;
struct joydev {int dev; } ;
struct inode {int dummy; } ;
struct file {struct joydev_client* private_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int JOYDEV_MINORS ;
 int JOYDEV_MINOR_BASE ;
 int get_device (int *) ;
 int iminor (struct inode*) ;
 int joydev_attach_client (struct joydev*,struct joydev_client*) ;
 int joydev_detach_client (struct joydev*,struct joydev_client*) ;
 int joydev_open_device (struct joydev*) ;
 struct joydev** joydev_table ;
 int joydev_table_mutex ;
 int kfree (struct joydev_client*) ;
 struct joydev_client* kzalloc (int,int ) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int joydev_open(struct inode *inode, struct file *file)
{
 struct joydev_client *client;
 struct joydev *joydev;
 int i = iminor(inode) - JOYDEV_MINOR_BASE;
 int error;

 if (i >= JOYDEV_MINORS)
  return -ENODEV;

 error = mutex_lock_interruptible(&joydev_table_mutex);
 if (error)
  return error;
 joydev = joydev_table[i];
 if (joydev)
  get_device(&joydev->dev);
 mutex_unlock(&joydev_table_mutex);

 if (!joydev)
  return -ENODEV;

 client = kzalloc(sizeof(struct joydev_client), GFP_KERNEL);
 if (!client) {
  error = -ENOMEM;
  goto err_put_joydev;
 }

 spin_lock_init(&client->buffer_lock);
 client->joydev = joydev;
 joydev_attach_client(joydev, client);

 error = joydev_open_device(joydev);
 if (error)
  goto err_free_client;

 file->private_data = client;
 return 0;

 err_free_client:
 joydev_detach_client(joydev, client);
 kfree(client);
 err_put_joydev:
 put_device(&joydev->dev);
 return error;
}
