
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int kmemcheck_active (struct pt_regs*) ;
 int kmemcheck_hide (struct pt_regs*) ;

bool kmemcheck_trap(struct pt_regs *regs)
{
 if (!kmemcheck_active(regs))
  return 0;


 kmemcheck_hide(regs);
 return 1;
}
