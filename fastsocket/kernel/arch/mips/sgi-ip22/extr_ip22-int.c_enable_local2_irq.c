
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int imask0; int cmeimask0; } ;


 int SGINT_LOCAL0 ;
 unsigned int SGINT_LOCAL2 ;
 int SGI_MAP_0_IRQ ;
 TYPE_1__* sgint ;

__attribute__((used)) static void enable_local2_irq(unsigned int irq)
{
 sgint->imask0 |= (1 << (SGI_MAP_0_IRQ - SGINT_LOCAL0));
 sgint->cmeimask0 |= (1 << (irq - SGINT_LOCAL2));
}
