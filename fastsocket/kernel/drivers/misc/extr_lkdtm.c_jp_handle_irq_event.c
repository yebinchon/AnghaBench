
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int dummy; } ;
typedef int irqreturn_t ;


 int jprobe_return () ;
 int lkdtm_handler () ;

__attribute__((used)) static irqreturn_t jp_handle_irq_event(unsigned int irq,
           struct irqaction *action)
{
 lkdtm_handler();
 jprobe_return();
 return 0;
}
