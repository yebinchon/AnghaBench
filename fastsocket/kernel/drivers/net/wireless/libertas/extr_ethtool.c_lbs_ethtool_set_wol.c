
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wol_config {int dummy; } ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int EHS_REMOVE_WAKEUP ;
 int EHS_WAKE_ON_BROADCAST_DATA ;
 int EHS_WAKE_ON_MAC_EVENT ;
 int EHS_WAKE_ON_MULTICAST_DATA ;
 int EHS_WAKE_ON_UNICAST_DATA ;
 int EOPNOTSUPP ;
 int WAKE_BCAST ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 int lbs_host_sleep_cfg (struct lbs_private*,int ,struct wol_config*) ;

__attribute__((used)) static int lbs_ethtool_set_wol(struct net_device *dev,
          struct ethtool_wolinfo *wol)
{
 struct lbs_private *priv = dev->ml_priv;
 uint32_t criteria = 0;

 if (wol->wolopts & ~(WAKE_UCAST|WAKE_MCAST|WAKE_BCAST|WAKE_PHY))
  return -EOPNOTSUPP;

 if (wol->wolopts & WAKE_UCAST)
  criteria |= EHS_WAKE_ON_UNICAST_DATA;
 if (wol->wolopts & WAKE_MCAST)
  criteria |= EHS_WAKE_ON_MULTICAST_DATA;
 if (wol->wolopts & WAKE_BCAST)
  criteria |= EHS_WAKE_ON_BROADCAST_DATA;
 if (wol->wolopts & WAKE_PHY)
  criteria |= EHS_WAKE_ON_MAC_EVENT;
 if (wol->wolopts == 0)
  criteria |= EHS_REMOVE_WAKEUP;

 return lbs_host_sleep_cfg(priv, criteria, (struct wol_config *)((void*)0));
}
