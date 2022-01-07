
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fec_enet_private {int phy_speed; scalar_t__ hwp; scalar_t__ link; } ;


 scalar_t__ FEC_ECNTRL ;
 int FEC_ENET_GRA ;
 int FEC_ENET_MII ;
 scalar_t__ FEC_IEVENT ;
 scalar_t__ FEC_IMASK ;
 scalar_t__ FEC_MII_SPEED ;
 scalar_t__ FEC_X_CNTRL ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int printk (char*) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void
fec_stop(struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);


 if (fep->link) {
  writel(1, fep->hwp + FEC_X_CNTRL);
  udelay(10);
  if (!(readl(fep->hwp + FEC_IEVENT) & FEC_ENET_GRA))
   printk("fec_stop : Graceful transmit stop did not complete !\n");
 }


 writel(1, fep->hwp + FEC_ECNTRL);
 udelay(10);


 writel(FEC_ENET_MII, fep->hwp + FEC_IEVENT);

 writel(FEC_ENET_MII, fep->hwp + FEC_IMASK);
 writel(fep->phy_speed, fep->hwp + FEC_MII_SPEED);
}
