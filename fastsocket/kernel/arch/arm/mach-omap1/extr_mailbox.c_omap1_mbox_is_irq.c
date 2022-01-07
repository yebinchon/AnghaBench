
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int dummy; } ;
typedef scalar_t__ omap_mbox_type_t ;


 scalar_t__ IRQ_TX ;

__attribute__((used)) static int
omap1_mbox_is_irq(struct omap_mbox *mbox, omap_mbox_type_t irq)
{
 if (irq == IRQ_TX)
  return 0;
 return 1;
}
