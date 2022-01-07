
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TX39_CONF_HALT ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;
 int read_c0_conf () ;
 int write_c0_conf (int) ;

__attribute__((used)) static void r39xx_wait(void)
{
 local_irq_disable();
 if (!need_resched())
  write_c0_conf(read_c0_conf() | TX39_CONF_HALT);
 local_irq_enable();
}
