
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int oprofile_add_sample (struct pt_regs*,int ) ;

__attribute__((used)) static int sh7750_timer_notify(struct pt_regs *regs)
{
 oprofile_add_sample(regs, 0);
 return 0;
}
