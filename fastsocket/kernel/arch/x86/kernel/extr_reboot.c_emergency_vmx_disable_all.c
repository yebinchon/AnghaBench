
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_has_vmx () ;
 scalar_t__ cpu_vmx_enabled () ;
 int cpu_vmxoff () ;
 int local_irq_disable () ;
 int nmi_shootdown_cpus (int ) ;
 int vmxoff_nmi ;

__attribute__((used)) static void emergency_vmx_disable_all(void)
{

 local_irq_disable();
 if (cpu_has_vmx() && cpu_vmx_enabled()) {


  cpu_vmxoff();


  nmi_shootdown_cpus(vmxoff_nmi);

 }
}
