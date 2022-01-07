
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;
struct pt_regs {int dummy; } ;


 struct pt_regs* get_irq_regs () ;
 int show_regs (struct pt_regs*) ;

__attribute__((used)) static void fn_show_ptregs(struct vc_data *vc)
{
 struct pt_regs *regs = get_irq_regs();
 if (regs)
  show_regs(regs);
}
