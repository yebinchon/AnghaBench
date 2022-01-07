
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int set_debugreg (unsigned long,int) ;

void kgdb_disable_hw_debug(struct pt_regs *regs)
{

 set_debugreg(0UL, 7);
}
