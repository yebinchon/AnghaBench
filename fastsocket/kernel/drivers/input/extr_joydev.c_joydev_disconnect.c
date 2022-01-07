
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct joydev {int dev; } ;
struct input_handle {struct joydev* private; } ;


 int device_del (int *) ;
 int input_unregister_handle (struct input_handle*) ;
 int joydev_cleanup (struct joydev*) ;
 int put_device (int *) ;

__attribute__((used)) static void joydev_disconnect(struct input_handle *handle)
{
 struct joydev *joydev = handle->private;

 device_del(&joydev->dev);
 joydev_cleanup(joydev);
 input_unregister_handle(handle);
 put_device(&joydev->dev);
}
