
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct TYPE_2__ {int revision_id; } ;
struct netxen_adapter {unsigned long portnum; TYPE_1__ ahw; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;


 int NETXEN_WOL_CONFIG ;
 int NETXEN_WOL_CONFIG_NV ;
 unsigned long NXRD32 (struct netxen_adapter*,int ) ;
 scalar_t__ NX_IS_REVISION_P2 (int ) ;
 int WAKE_MAGIC ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
netxen_nic_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct netxen_adapter *adapter = netdev_priv(dev);
 u32 wol_cfg = 0;

 wol->supported = 0;
 wol->wolopts = 0;

 if (NX_IS_REVISION_P2(adapter->ahw.revision_id))
  return;

 wol_cfg = NXRD32(adapter, NETXEN_WOL_CONFIG_NV);
 if (wol_cfg & (1UL << adapter->portnum))
  wol->supported |= WAKE_MAGIC;

 wol_cfg = NXRD32(adapter, NETXEN_WOL_CONFIG);
 if (wol_cfg & (1UL << adapter->portnum))
  wol->wolopts |= WAKE_MAGIC;
}
