
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int* dev_addr; } ;
struct ioc3_private {struct ioc3* regs; } ;
struct ioc3 {int dummy; } ;


 int ioc3_w_emar_h (int) ;
 int ioc3_w_emar_l (int) ;
 struct ioc3_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void __ioc3_set_mac_address(struct net_device *dev)
{
 struct ioc3_private *ip = netdev_priv(dev);
 struct ioc3 *ioc3 = ip->regs;

 ioc3_w_emar_h((dev->dev_addr[5] << 8) | dev->dev_addr[4]);
 ioc3_w_emar_l((dev->dev_addr[3] << 24) | (dev->dev_addr[2] << 16) |
               (dev->dev_addr[1] << 8) | dev->dev_addr[0]);
}
