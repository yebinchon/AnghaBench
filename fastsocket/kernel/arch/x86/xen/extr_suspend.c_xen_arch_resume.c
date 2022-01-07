
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CLOCK_EVT_NOTIFY_RESUME ;
 int on_each_cpu (int ,void*,int) ;
 int xen_vcpu_notify_restore ;

void xen_arch_resume(void)
{
 on_each_cpu(xen_vcpu_notify_restore,
      (void *)CLOCK_EVT_NOTIFY_RESUME, 1);
}
