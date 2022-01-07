
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int pos_register; int slot; unsigned char* pos; } ;


 int MCA_ADAPTER_SETUP_REG ;
 int MCA_MOTHERBOARD_SETUP_REG ;
 int MCA_POS_REG (int) ;
 unsigned char inb_p (int ) ;
 int mca_lock ;
 int outb_p (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned char mca_pc_read_pos(struct mca_device *mca_dev, int reg)
{
 unsigned char byte;
 unsigned long flags;

 if (reg < 0 || reg >= 8)
  return 0;

 spin_lock_irqsave(&mca_lock, flags);
 if (mca_dev->pos_register) {


  outb_p(0, MCA_ADAPTER_SETUP_REG);
  outb_p(mca_dev->pos_register, MCA_MOTHERBOARD_SETUP_REG);

  byte = inb_p(MCA_POS_REG(reg));
  outb_p(0xff, MCA_MOTHERBOARD_SETUP_REG);
 } else {



  outb_p(0xff, MCA_MOTHERBOARD_SETUP_REG);



  outb_p(0x8|(mca_dev->slot & 0xf), MCA_ADAPTER_SETUP_REG);
  byte = inb_p(MCA_POS_REG(reg));
  outb_p(0, MCA_ADAPTER_SETUP_REG);
 }
 spin_unlock_irqrestore(&mca_lock, flags);

 mca_dev->pos[reg] = byte;

 return byte;
}
