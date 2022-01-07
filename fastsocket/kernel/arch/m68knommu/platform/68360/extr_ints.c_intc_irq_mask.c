
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int intr_cimr; } ;


 TYPE_1__* pquicc ;

__attribute__((used)) static void intc_irq_mask(unsigned int irq)
{
 pquicc->intr_cimr &= ~(1 << irq);
}
