
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_mbox2_priv {int irqenable; int newmsg_bit; int notfull_bit; } ;
struct omap_mbox {scalar_t__ priv; } ;
typedef scalar_t__ omap_mbox_type_t ;


 scalar_t__ IRQ_TX ;
 int mbox_read_reg (int ) ;
 int mbox_write_reg (int ,int ) ;

__attribute__((used)) static void omap2_mbox_enable_irq(struct omap_mbox *mbox,
  omap_mbox_type_t irq)
{
 struct omap_mbox2_priv *p = (struct omap_mbox2_priv *)mbox->priv;
 u32 l, bit = (irq == IRQ_TX) ? p->notfull_bit : p->newmsg_bit;

 l = mbox_read_reg(p->irqenable);
 l |= bit;
 mbox_write_reg(l, p->irqenable);
}
