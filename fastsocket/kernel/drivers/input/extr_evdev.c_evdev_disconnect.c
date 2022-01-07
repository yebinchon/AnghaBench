
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {struct evdev* private; } ;
struct evdev {int dev; } ;


 int device_del (int *) ;
 int evdev_cleanup (struct evdev*) ;
 int input_unregister_handle (struct input_handle*) ;
 int put_device (int *) ;

__attribute__((used)) static void evdev_disconnect(struct input_handle *handle)
{
 struct evdev *evdev = handle->private;

 device_del(&evdev->dev);
 evdev_cleanup(evdev);
 input_unregister_handle(handle);
 put_device(&evdev->dev);
}
