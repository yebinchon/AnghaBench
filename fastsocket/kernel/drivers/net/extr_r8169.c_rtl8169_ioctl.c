
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int (* do_ioctl ) (struct rtl8169_private*,struct mii_ioctl_data*,int) ;} ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;


 int ENODEV ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int stub1 (struct rtl8169_private*,struct mii_ioctl_data*,int) ;

__attribute__((used)) static int rtl8169_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 struct mii_ioctl_data *data = if_mii(ifr);

 return netif_running(dev) ? tp->do_ioctl(tp, data, cmd) : -ENODEV;
}
