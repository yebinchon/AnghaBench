
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int mii; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int rtl8169_gset_xmii(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 return mii_ethtool_gset(&tp->mii, cmd);
}
