
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;

__attribute__((used)) static void vr41xx_cpu_wait(void)
{
 local_irq_disable();
 if (!need_resched())



  __asm__("standby;\n");
 else
  local_irq_enable();
}
