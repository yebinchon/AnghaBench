
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int idle_with_irq_disabled () ;
 int ipipe_suspend_domain () ;
 int local_irq_disable_hw () ;
 int local_irq_enable_hw () ;
 int need_resched () ;

__attribute__((used)) static void default_idle(void)
{



 local_irq_disable_hw();
 if (!need_resched())
  idle_with_irq_disabled();

 local_irq_enable_hw();
}
