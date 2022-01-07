
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long IA64_PSR_I ;
 scalar_t__ xen_get_virtual_psr_i () ;

__attribute__((used)) static unsigned long
xen_get_psr_i(void)
{
 return xen_get_virtual_psr_i() ? IA64_PSR_I : 0;
}
