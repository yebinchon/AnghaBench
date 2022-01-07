
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long itc_offset; unsigned long itc_last; } ;


 int WARN_ON (int) ;
 TYPE_1__* XEN_MAPPEDREGS ;
 int _IA64_REG_AR_ITC ;
 unsigned long cmpxchg (unsigned long*,unsigned long,unsigned long) ;
 unsigned long ia64_native_getreg (int ) ;
 int irqs_disabled () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned long
xen_get_itc(void)
{
 unsigned long res;
 unsigned long itc_offset;
 unsigned long itc_last;
 unsigned long ret_itc_last;

 itc_offset = XEN_MAPPEDREGS->itc_offset;
 do {
  itc_last = XEN_MAPPEDREGS->itc_last;
  res = ia64_native_getreg(_IA64_REG_AR_ITC);
  res += itc_offset;
  if (itc_last >= res)
   res = itc_last + 1;
  ret_itc_last = cmpxchg(&XEN_MAPPEDREGS->itc_last,
           itc_last, res);
 } while (unlikely(ret_itc_last != itc_last));
 return res;
}
