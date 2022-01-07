
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ti_ohci {int phy_reg_lock; } ;
typedef int quadlet_t ;


 int KERN_ERR ;
 int OHCI1394_PhyControl ;
 int OHCI_LOOP_COUNT ;
 int PRINT (int ,char*,int,int,int) ;
 int mdelay (int) ;
 int reg_read (struct ti_ohci*,int ) ;
 int reg_write (struct ti_ohci*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u8 get_phy_reg(struct ti_ohci *ohci, u8 addr)
{
 int i;
 unsigned long flags;
 quadlet_t r;

 spin_lock_irqsave (&ohci->phy_reg_lock, flags);

 reg_write(ohci, OHCI1394_PhyControl, (addr << 8) | 0x00008000);

 for (i = 0; i < OHCI_LOOP_COUNT; i++) {
  if (reg_read(ohci, OHCI1394_PhyControl) & 0x80000000)
   break;

  mdelay(1);
 }

 r = reg_read(ohci, OHCI1394_PhyControl);

 if (i >= OHCI_LOOP_COUNT)
  PRINT (KERN_ERR, "Get PHY Reg timeout [0x%08x/0x%08x/%d]",
         r, r & 0x80000000, i);

 spin_unlock_irqrestore (&ohci->phy_reg_lock, flags);

 return (r & 0x00ff0000) >> 16;
}
