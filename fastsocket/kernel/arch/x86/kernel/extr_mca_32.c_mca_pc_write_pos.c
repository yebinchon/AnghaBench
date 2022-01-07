
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int slot; unsigned char* pos; } ;


 int MCA_ADAPTER_SETUP_REG ;
 int MCA_MOTHERBOARD_SETUP_REG ;
 int MCA_POS_REG (int) ;
 int mca_lock ;
 int outb_p (unsigned char,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mca_pc_write_pos(struct mca_device *mca_dev, int reg,
        unsigned char byte)
{
 unsigned long flags;

 if (reg < 0 || reg >= 8)
  return;

 spin_lock_irqsave(&mca_lock, flags);



 outb_p(0xff, MCA_MOTHERBOARD_SETUP_REG);



 outb_p(0x8|(mca_dev->slot&0xf), MCA_ADAPTER_SETUP_REG);
 outb_p(byte, MCA_POS_REG(reg));
 outb_p(0, MCA_ADAPTER_SETUP_REG);

 spin_unlock_irqrestore(&mca_lock, flags);



 mca_dev->pos[reg] = byte;

}
