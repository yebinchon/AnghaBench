
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int r; } ;
struct TYPE_6__ {TYPE_1__ edc; } ;
struct TYPE_5__ {int mode; } ;


 unsigned int TXX9_IRQ_BASE ;
 scalar_t__ TXx9_IRCR_EDGE (int ) ;
 unsigned int TXx9_IRSCR_EIClrE ;
 int __raw_writel (unsigned int,int *) ;
 TYPE_3__* tx4939_ircptr ;
 int tx4939_irq_mask (unsigned int) ;
 TYPE_2__* tx4939irq ;

__attribute__((used)) static void tx4939_irq_mask_ack(unsigned int irq)
{
 unsigned int irq_nr = irq - TXX9_IRQ_BASE;

 tx4939_irq_mask(irq);
 if (TXx9_IRCR_EDGE(tx4939irq[irq_nr].mode)) {
  irq_nr--;

  __raw_writel((TXx9_IRSCR_EIClrE | (irq_nr & 0xf))
        << (irq_nr & 0x10),
        &tx4939_ircptr->edc.r);
 }
}
