
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JMR3927_IOC_RESET_ADDR ;
 int JMR3927_IOC_RESET_CPU ;
 int JMR3927_IOC_RESET_PCI ;
 int _machine_halt () ;
 int jmr3927_ioc_reg_in (int ) ;
 int jmr3927_ioc_reg_out (int ,int ) ;
 int local_irq_disable () ;
 int mdelay (int) ;
 int stub1 () ;

__attribute__((used)) static void jmr3927_machine_restart(char *command)
{
 local_irq_disable();

 jmr3927_ioc_reg_out(0, JMR3927_IOC_RESET_ADDR);
 jmr3927_ioc_reg_out(JMR3927_IOC_RESET_PCI, JMR3927_IOC_RESET_ADDR);
 (void)jmr3927_ioc_reg_in(JMR3927_IOC_RESET_ADDR);
 mdelay(1);
 jmr3927_ioc_reg_out(0, JMR3927_IOC_RESET_ADDR);

 jmr3927_ioc_reg_out(JMR3927_IOC_RESET_CPU, JMR3927_IOC_RESET_ADDR);

 (*_machine_halt)();
}
