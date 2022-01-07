
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int irq; } ;
typedef scalar_t__ omap_mbox_type_t ;


 scalar_t__ IRQ_RX ;
 int disable_irq (int ) ;

__attribute__((used)) static void
omap1_mbox_disable_irq(struct omap_mbox *mbox, omap_mbox_type_t irq)
{
 if (irq == IRQ_RX)
  disable_irq(mbox->irq);
}
