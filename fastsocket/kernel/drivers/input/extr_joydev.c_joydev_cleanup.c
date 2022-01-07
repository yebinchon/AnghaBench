
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {int dummy; } ;
struct joydev {scalar_t__ open; struct input_handle handle; } ;


 int input_close_device (struct input_handle*) ;
 int joydev_hangup (struct joydev*) ;
 int joydev_mark_dead (struct joydev*) ;
 int joydev_remove_chrdev (struct joydev*) ;

__attribute__((used)) static void joydev_cleanup(struct joydev *joydev)
{
 struct input_handle *handle = &joydev->handle;

 joydev_mark_dead(joydev);
 joydev_hangup(joydev);
 joydev_remove_chrdev(joydev);


 if (joydev->open)
  input_close_device(handle);
}
