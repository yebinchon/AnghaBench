
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int istat1; int imask1; int vmeistat; int cmeimask1; } ;


 int SGINT_ISTAT1_LIO3 ;
 int do_IRQ (int) ;
 int* lc1msk_to_irqnr ;
 int* lc3msk_to_irqnr ;
 TYPE_1__* sgint ;

__attribute__((used)) static void indy_local1_irqdispatch(void)
{
 u8 mask = sgint->istat1 & sgint->imask1;
 u8 mask2;
 int irq;

 if (mask & SGINT_ISTAT1_LIO3) {
  mask2 = sgint->vmeistat & sgint->cmeimask1;
  irq = lc3msk_to_irqnr[mask2];
 } else
  irq = lc1msk_to_irqnr[mask];


 if (irq)
  do_IRQ(irq);
}
