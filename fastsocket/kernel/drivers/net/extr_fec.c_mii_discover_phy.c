
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct net_device {int dummy; } ;
struct fec_enet_private {int phy_addr; int phy_id; scalar_t__ phy_speed; scalar_t__ hwp; } ;


 scalar_t__ FEC_MII_SPEED ;
 int MII_REG_PHYIR1 ;
 int MII_REG_PHYIR2 ;
 int fec_disable_phy_intr (struct net_device*) ;
 void mii_discover_phy3 (int,struct net_device*) ;
 int mii_queue_unlocked (struct net_device*,int ,void (*) (int,struct net_device*)) ;
 int mk_mii_read (int ) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int printk (char*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void
mii_discover_phy(uint mii_reg, struct net_device *dev)
{
 struct fec_enet_private *fep;
 uint phytype;

 fep = netdev_priv(dev);

 if (fep->phy_addr < 32) {
  if ((phytype = (mii_reg & 0xffff)) != 0xffff && phytype != 0) {


   fep->phy_id = phytype << 16;
   mii_queue_unlocked(dev, mk_mii_read(MII_REG_PHYIR2),
       mii_discover_phy3);
  } else {
   fep->phy_addr++;
   mii_queue_unlocked(dev, mk_mii_read(MII_REG_PHYIR1),
       mii_discover_phy);
  }
 } else {
  printk("FEC: No PHY device found.\n");

  writel(0, fep->hwp + FEC_MII_SPEED);
  fep->phy_speed = 0;



 }
}
