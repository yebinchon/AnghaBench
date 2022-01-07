
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int local_irq_disable () ;
 int show_registers (struct pt_regs*) ;
 int stop_watchdog () ;

void
watchdog_bite_hook(struct pt_regs *regs)
{
 show_registers(regs);

}
