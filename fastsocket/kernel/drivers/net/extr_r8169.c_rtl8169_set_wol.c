
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8169_private {TYPE_1__* pci_dev; int features; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct TYPE_2__ {int dev; } ;


 int RTL_FEATURE_WOL ;
 int __rtl8169_set_wol (struct rtl8169_private*,int ) ;
 int device_set_wakeup_enable (int *,int ) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int rtl_lock_work (struct rtl8169_private*) ;
 int rtl_unlock_work (struct rtl8169_private*) ;

__attribute__((used)) static int rtl8169_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 rtl_lock_work(tp);

 if (wol->wolopts)
  tp->features |= RTL_FEATURE_WOL;
 else
  tp->features &= ~RTL_FEATURE_WOL;
 __rtl8169_set_wol(tp, wol->wolopts);

 rtl_unlock_work(tp);

 device_set_wakeup_enable(&tp->pci_dev->dev, wol->wolopts);

 return 0;
}
