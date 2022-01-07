
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int msr; } ;




 int SRR1_WAKEMASK ;



 int cbe_sysreset_hack () ;
 int cbe_system_error_exception (struct pt_regs*) ;
 int cbe_thermal_exception (struct pt_regs*) ;
 int do_IRQ (struct pt_regs*) ;
 int timer_interrupt (struct pt_regs*) ;

__attribute__((used)) static int cbe_system_reset_exception(struct pt_regs *regs)
{
 switch (regs->msr & SRR1_WAKEMASK) {
 case 131:
  do_IRQ(regs);
  break;
 case 132:
  timer_interrupt(regs);
  break;
 case 130:
  return cbe_sysreset_hack();
 default:

  return 0;
 }

 return 1;
}
