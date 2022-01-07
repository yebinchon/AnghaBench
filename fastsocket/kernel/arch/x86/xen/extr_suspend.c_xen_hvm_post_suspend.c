
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xen_callback_vector () ;
 int xen_hvm_init_shared_info () ;
 int xen_unplug_emulated_devices () ;

void xen_hvm_post_suspend(int suspend_cancelled)
{
 xen_hvm_init_shared_info();
 xen_callback_vector();
 xen_unplug_emulated_devices();
}
