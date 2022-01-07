
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int EISA_DBG (char*,int,int ,int ,...) ;
 int IRQ_HANDLED ;
 int __do_IRQ (int) ;
 int eisa_in8 (int) ;
 int eisa_irq_lock ;
 int eisa_out8 (int,int) ;
 int gsc_readb (int) ;
 int master_mask ;
 int slave_mask ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t eisa_irq(int wax_irq, void *intr_dev)
{
 int irq = gsc_readb(0xfc01f000);
 unsigned long flags;

 spin_lock_irqsave(&eisa_irq_lock, flags);

 eisa_out8(0x0a, 0x20);
 eisa_out8(0x0a, 0xa0);

 EISA_DBG("irq IAR %02x 8259-1 irr %02x 8259-2 irr %02x\n",
     irq, eisa_in8(0x20), eisa_in8(0xa0));


 eisa_out8(0x0a, 0x20);
 eisa_out8(0x0a, 0xa0);
 EISA_DBG("irq 8259-1 isr %02x imr %02x 8259-2 isr %02x imr %02x\n",
   eisa_in8(0x20), eisa_in8(0x21), eisa_in8(0xa0), eisa_in8(0xa1));

 irq &= 0xf;


 if (irq & 8) {
  slave_mask |= (1 << (irq&7));
  eisa_out8(slave_mask, 0xa1);
  eisa_out8(0x60 | (irq&7),0xa0);
  eisa_out8(0x62,0x20);

 } else {
  master_mask |= (1 << (irq&7));
  eisa_out8(master_mask, 0x21);
  eisa_out8(0x60|irq,0x20);
 }
 spin_unlock_irqrestore(&eisa_irq_lock, flags);

 __do_IRQ(irq);

 spin_lock_irqsave(&eisa_irq_lock, flags);

        if (irq & 8) {
  slave_mask &= ~(1 << (irq&7));
  eisa_out8(slave_mask, 0xa1);
 } else {
  master_mask &= ~(1 << (irq&7));
  eisa_out8(master_mask, 0x21);
 }
 spin_unlock_irqrestore(&eisa_irq_lock, flags);
 return IRQ_HANDLED;
}
