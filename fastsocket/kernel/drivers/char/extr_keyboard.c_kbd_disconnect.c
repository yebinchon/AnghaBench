
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {int dummy; } ;


 int input_close_device (struct input_handle*) ;
 int input_unregister_handle (struct input_handle*) ;
 int kfree (struct input_handle*) ;

__attribute__((used)) static void kbd_disconnect(struct input_handle *handle)
{
 input_close_device(handle);
 input_unregister_handle(handle);
 kfree(handle);
}
