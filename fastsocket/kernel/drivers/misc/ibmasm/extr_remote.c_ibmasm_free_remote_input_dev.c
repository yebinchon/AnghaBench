
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int keybd_dev; int mouse_dev; } ;
struct service_processor {TYPE_1__ remote; } ;


 int disable_mouse_interrupts (struct service_processor*) ;
 int input_unregister_device (int ) ;

void ibmasm_free_remote_input_dev(struct service_processor *sp)
{
 disable_mouse_interrupts(sp);
 input_unregister_device(sp->remote.mouse_dev);
 input_unregister_device(sp->remote.keybd_dev);
}
