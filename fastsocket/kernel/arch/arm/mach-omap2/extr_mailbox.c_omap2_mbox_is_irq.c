
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_mbox2_priv {int notfull_bit; int newmsg_bit; int irqstatus; int irqenable; } ;
struct omap_mbox {scalar_t__ priv; } ;
typedef scalar_t__ omap_mbox_type_t ;


 scalar_t__ IRQ_TX ;
 int mbox_read_reg (int ) ;

__attribute__((used)) static int omap2_mbox_is_irq(struct omap_mbox *mbox,
  omap_mbox_type_t irq)
{
 struct omap_mbox2_priv *p = (struct omap_mbox2_priv *)mbox->priv;
 u32 bit = (irq == IRQ_TX) ? p->notfull_bit : p->newmsg_bit;
 u32 enable = mbox_read_reg(p->irqenable);
 u32 status = mbox_read_reg(p->irqstatus);

 return (enable & status & bit);
}
