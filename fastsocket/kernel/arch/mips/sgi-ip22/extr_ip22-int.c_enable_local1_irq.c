
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int imask1; } ;


 unsigned int SGINT_LOCAL1 ;
 unsigned int SGI_MAP_1_IRQ ;
 TYPE_1__* sgint ;

__attribute__((used)) static void enable_local1_irq(unsigned int irq)
{


 if (irq != SGI_MAP_1_IRQ)
  sgint->imask1 |= (1 << (irq - SGINT_LOCAL1));
}
