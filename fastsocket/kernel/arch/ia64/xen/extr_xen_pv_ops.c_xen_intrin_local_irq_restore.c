
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long IA64_PSR_I ;
 int xen_rsm_i () ;
 int xen_ssm_i () ;

__attribute__((used)) static void
xen_intrin_local_irq_restore(unsigned long mask)
{
 if (mask & IA64_PSR_I)
  xen_ssm_i();
 else
  xen_rsm_i();
}
