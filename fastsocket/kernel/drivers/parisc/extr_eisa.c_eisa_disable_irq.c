
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EISA_DBG (char*,unsigned int) ;
 unsigned int eisa_in8 (int) ;
 int eisa_irq_lock ;
 int eisa_out8 (int,int) ;
 int master_mask ;
 int slave_mask ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void eisa_disable_irq(unsigned int irq)
{
 unsigned long flags;

 EISA_DBG("disable irq %d\n", irq);

 spin_lock_irqsave(&eisa_irq_lock, flags);
        if (irq & 8) {
  slave_mask |= (1 << (irq&7));
  eisa_out8(slave_mask, 0xa1);
 } else {
  master_mask |= (1 << (irq&7));
  eisa_out8(master_mask, 0x21);
 }
 spin_unlock_irqrestore(&eisa_irq_lock, flags);
 EISA_DBG("pic0 mask %02x\n", eisa_in8(0x21));
 EISA_DBG("pic1 mask %02x\n", eisa_in8(0xa1));
}
