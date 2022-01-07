
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int (* get_settings ) (struct net_device*,struct ethtool_cmd*) ;} ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int rtl_lock_work (struct rtl8169_private*) ;
 int rtl_unlock_work (struct rtl8169_private*) ;
 int stub1 (struct net_device*,struct ethtool_cmd*) ;

__attribute__((used)) static int rtl8169_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 int rc;

 rtl_lock_work(tp);
 rc = tp->get_settings(dev, cmd);
 rtl_unlock_work(tp);

 return rc;
}
