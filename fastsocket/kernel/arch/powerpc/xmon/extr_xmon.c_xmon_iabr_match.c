
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int msr; } ;


 int MSR_IR ;
 int MSR_PR ;
 int MSR_SF ;
 int * iabr ;
 int xmon_core (struct pt_regs*,int ) ;

__attribute__((used)) static int xmon_iabr_match(struct pt_regs *regs)
{
 if ((regs->msr & (MSR_IR|MSR_PR|MSR_SF)) != (MSR_IR|MSR_SF))
  return 0;
 if (iabr == ((void*)0))
  return 0;
 xmon_core(regs, 0);
 return 1;
}
