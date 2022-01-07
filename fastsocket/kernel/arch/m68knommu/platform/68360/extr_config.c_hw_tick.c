
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int timer_ter1; } ;


 int arch_timer_interrupt (int,void*) ;
 TYPE_1__* pquicc ;

__attribute__((used)) static irqreturn_t hw_tick(int irq, void *dummy)
{



  pquicc->timer_ter1 = 0x0002;

  return arch_timer_interrupt(irq, dummy);
}
