
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ioc3_private {struct ioc3* regs; } ;
struct ioc3 {int dummy; } ;


 int MICR_BUSY ;
 int MICR_PHYADDR_SHIFT ;
 int ioc3_r_micr () ;
 int ioc3_w_micr (int) ;
 int ioc3_w_midr_w (int) ;
 struct ioc3_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ioc3_mdio_write(struct net_device *dev, int phy, int reg, int data)
{
 struct ioc3_private *ip = netdev_priv(dev);
 struct ioc3 *ioc3 = ip->regs;

 while (ioc3_r_micr() & MICR_BUSY);
 ioc3_w_midr_w(data);
 ioc3_w_micr((phy << MICR_PHYADDR_SHIFT) | reg);
 while (ioc3_r_micr() & MICR_BUSY);
}
