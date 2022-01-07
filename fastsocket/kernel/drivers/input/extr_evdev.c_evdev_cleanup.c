
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {int dummy; } ;
struct evdev {scalar_t__ open; struct input_handle handle; } ;


 int evdev_hangup (struct evdev*) ;
 int evdev_mark_dead (struct evdev*) ;
 int evdev_remove_chrdev (struct evdev*) ;
 int input_close_device (struct input_handle*) ;
 int input_flush_device (struct input_handle*,int *) ;

__attribute__((used)) static void evdev_cleanup(struct evdev *evdev)
{
 struct input_handle *handle = &evdev->handle;

 evdev_mark_dead(evdev);
 evdev_hangup(evdev);
 evdev_remove_chrdev(evdev);


 if (evdev->open) {
  input_flush_device(handle, ((void*)0));
  input_close_device(handle);
 }
}
