
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;

__attribute__((used)) static void stop_this_cpu(void *dummy)
{
 local_irq_disable();
 while (1)
  ;
}
