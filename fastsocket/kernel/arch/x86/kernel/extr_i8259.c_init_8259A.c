
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask_ack; } ;


 unsigned int IRQ0_VECTOR ;
 unsigned int IRQ8_VECTOR ;
 unsigned int MASTER_ICW4_DEFAULT ;
 unsigned int PIC_CASCADE_IR ;
 unsigned int PIC_ICW4_AEOI ;
 int PIC_MASTER_CMD ;
 int PIC_MASTER_IMR ;
 int PIC_SLAVE_CMD ;
 int PIC_SLAVE_IMR ;
 unsigned int SLAVE_ICW4_DEFAULT ;
 int cached_master_mask ;
 int cached_slave_mask ;
 int disable_8259A_irq ;
 int i8259A_auto_eoi ;
 TYPE_1__ i8259A_chip ;
 int i8259A_lock ;
 int mask_and_ack_8259A ;
 int outb (int,int ) ;
 int outb_pic (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

void init_8259A(int auto_eoi)
{
 unsigned long flags;

 i8259A_auto_eoi = auto_eoi;

 spin_lock_irqsave(&i8259A_lock, flags);

 outb(0xff, PIC_MASTER_IMR);
 outb(0xff, PIC_SLAVE_IMR);




 outb_pic(0x11, PIC_MASTER_CMD);



 outb_pic(IRQ0_VECTOR, PIC_MASTER_IMR);


 outb_pic(1U << PIC_CASCADE_IR, PIC_MASTER_IMR);

 if (auto_eoi)
  outb_pic(MASTER_ICW4_DEFAULT | PIC_ICW4_AEOI, PIC_MASTER_IMR);
 else
  outb_pic(MASTER_ICW4_DEFAULT, PIC_MASTER_IMR);

 outb_pic(0x11, PIC_SLAVE_CMD);


 outb_pic(IRQ8_VECTOR, PIC_SLAVE_IMR);

 outb_pic(PIC_CASCADE_IR, PIC_SLAVE_IMR);

 outb_pic(SLAVE_ICW4_DEFAULT, PIC_SLAVE_IMR);

 if (auto_eoi)




  i8259A_chip.mask_ack = disable_8259A_irq;
 else
  i8259A_chip.mask_ack = mask_and_ack_8259A;

 udelay(100);

 outb(cached_master_mask, PIC_MASTER_IMR);
 outb(cached_slave_mask, PIC_SLAVE_IMR);

 spin_unlock_irqrestore(&i8259A_lock, flags);
}
