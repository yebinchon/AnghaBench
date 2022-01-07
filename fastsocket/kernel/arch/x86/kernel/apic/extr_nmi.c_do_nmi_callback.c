
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 scalar_t__ unknown_nmi_panic ;
 int unknown_nmi_panic_callback (struct pt_regs*,int) ;

int do_nmi_callback(struct pt_regs *regs, int cpu)
{




 return 0;
}
