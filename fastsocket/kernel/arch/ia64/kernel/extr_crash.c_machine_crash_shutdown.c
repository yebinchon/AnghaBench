
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int atomic_inc_return (int *) ;
 int ia64_set_psr_mc () ;
 int kdump_cpu_freeze ;
 int kdump_in_progress ;
 int kdump_smp_send_init () ;
 int kdump_smp_send_stop () ;
 scalar_t__ kdump_wait_cpu_freeze () ;
 int kexec_disable_iosapic () ;
 int local_irq_disable () ;
 int unw_init_running (int ,int *) ;

void
machine_crash_shutdown(struct pt_regs *pt)
{
 kexec_disable_iosapic();
}
