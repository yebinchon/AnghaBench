
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int barrier () ;
 int xen_set_virtual_psr_i (int ) ;

__attribute__((used)) static void
xen_rsm_i(void)
{
 xen_set_virtual_psr_i(0);
 barrier();
}
