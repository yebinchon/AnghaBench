
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mousedev_client {struct mousedev* mousedev; } ;
struct mousedev {int dev; } ;
struct inode {int dummy; } ;
struct file {struct mousedev_client* private_data; } ;


 int kfree (struct mousedev_client*) ;
 int mousedev_close_device (struct mousedev*) ;
 int mousedev_detach_client (struct mousedev*,struct mousedev_client*) ;
 int put_device (int *) ;

__attribute__((used)) static int mousedev_release(struct inode *inode, struct file *file)
{
 struct mousedev_client *client = file->private_data;
 struct mousedev *mousedev = client->mousedev;

 mousedev_detach_client(mousedev, client);
 kfree(client);

 mousedev_close_device(mousedev);
 put_device(&mousedev->dev);

 return 0;
}
