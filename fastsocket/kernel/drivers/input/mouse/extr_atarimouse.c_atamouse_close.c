
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int * atari_mouse_interrupt_hook ;
 int ikbd_mouse_disable () ;

__attribute__((used)) static void atamouse_close(struct input_dev *dev)
{
 ikbd_mouse_disable();
 atari_mouse_interrupt_hook = ((void*)0);
}
