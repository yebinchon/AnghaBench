
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmeimask1; int imask1; } ;


 int SGINT_LOCAL1 ;
 unsigned int SGINT_LOCAL3 ;
 int SGI_MAP_1_IRQ ;
 TYPE_1__* sgint ;

__attribute__((used)) static void disable_local3_irq(unsigned int irq)
{
 sgint->cmeimask1 &= ~(1 << (irq - SGINT_LOCAL3));
 if (!sgint->cmeimask1)
  sgint->imask1 &= ~(1 << (SGI_MAP_1_IRQ - SGINT_LOCAL1));
}
