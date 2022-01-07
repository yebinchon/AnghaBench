
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long itc_offset; unsigned long itc_last; } ;


 int WARN_ON (int) ;
 TYPE_1__* XEN_MAPPEDREGS ;
 int _IA64_REG_AR_ITC ;
 unsigned long ia64_native_getreg (int ) ;
 int irqs_disabled () ;

__attribute__((used)) static void
xen_set_itc(unsigned long val)
{
 unsigned long mitc;

 WARN_ON(!irqs_disabled());
 mitc = ia64_native_getreg(_IA64_REG_AR_ITC);
 XEN_MAPPEDREGS->itc_offset = val - mitc;
 XEN_MAPPEDREGS->itc_last = val;
}
