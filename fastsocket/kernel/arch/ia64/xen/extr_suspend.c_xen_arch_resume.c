
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xen_timer_resume_on_aps () ;

void xen_arch_resume(void)
{
 xen_timer_resume_on_aps();
}
