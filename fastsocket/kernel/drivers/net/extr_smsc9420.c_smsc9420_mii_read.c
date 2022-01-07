
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct smsc9420_pdata {int phy_lock; } ;
struct mii_bus {scalar_t__ priv; } ;


 int DRV ;
 int EIO ;
 int MII_ACCESS ;
 int MII_ACCESS_MII_BUSY_ ;
 int MII_ACCESS_MII_READ_ ;
 int MII_DATA ;
 int smsc9420_reg_read (struct smsc9420_pdata*,int ) ;
 int smsc9420_reg_write (struct smsc9420_pdata*,int ,int) ;
 int smsc_warn (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int smsc9420_mii_read(struct mii_bus *bus, int phyaddr, int regidx)
{
 struct smsc9420_pdata *pd = (struct smsc9420_pdata *)bus->priv;
 unsigned long flags;
 u32 addr;
 int i, reg = -EIO;

 spin_lock_irqsave(&pd->phy_lock, flags);


 if ((smsc9420_reg_read(pd, MII_ACCESS) & MII_ACCESS_MII_BUSY_)) {
  smsc_warn(DRV, "MII is busy???");
  goto out;
 }


 addr = ((phyaddr & 0x1F) << 11) | ((regidx & 0x1F) << 6) |
  MII_ACCESS_MII_READ_;
 smsc9420_reg_write(pd, MII_ACCESS, addr);


 for (i = 0; i < 5; i++) {
  if (!(smsc9420_reg_read(pd, MII_ACCESS) &
   MII_ACCESS_MII_BUSY_)) {
   reg = (u16)smsc9420_reg_read(pd, MII_DATA);
   goto out;
  }
  udelay(10);
 }

 smsc_warn(DRV, "MII busy timeout!");

out:
 spin_unlock_irqrestore(&pd->phy_lock, flags);
 return reg;
}
