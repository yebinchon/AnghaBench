
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int barrier () ;
 scalar_t__ xen_get_virtual_pend () ;
 int xen_get_virtual_psr_i () ;
 int xen_hyper_ssm_i () ;
 int xen_set_virtual_psr_i (int) ;

__attribute__((used)) static void
xen_ssm_i(void)
{
 int old = xen_get_virtual_psr_i();
 xen_set_virtual_psr_i(1);
 barrier();
 if (!old && xen_get_virtual_pend())
  xen_hyper_ssm_i();
}
