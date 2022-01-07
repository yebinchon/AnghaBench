
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * handler; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vgasr_mutex ;
 TYPE_1__ vgasr_priv ;

void vga_switcheroo_unregister_handler(void)
{
 mutex_lock(&vgasr_mutex);
 vgasr_priv.handler = ((void*)0);
 mutex_unlock(&vgasr_mutex);
}
