
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int revision_id; } ;
struct netxen_adapter {int portnum; TYPE_1__ ahw; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int EOPNOTSUPP ;
 int NETXEN_WOL_CONFIG ;
 int NETXEN_WOL_CONFIG_NV ;
 int NXRD32 (struct netxen_adapter*,int ) ;
 int NXWR32 (struct netxen_adapter*,int ,int) ;
 scalar_t__ NX_IS_REVISION_P2 (int ) ;
 int WAKE_MAGIC ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
netxen_nic_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct netxen_adapter *adapter = netdev_priv(dev);
 u32 wol_cfg = 0;

 if (NX_IS_REVISION_P2(adapter->ahw.revision_id))
  return -EOPNOTSUPP;

 if (wol->wolopts & ~WAKE_MAGIC)
  return -EOPNOTSUPP;

 wol_cfg = NXRD32(adapter, NETXEN_WOL_CONFIG_NV);
 if (!(wol_cfg & (1 << adapter->portnum)))
  return -EOPNOTSUPP;

 wol_cfg = NXRD32(adapter, NETXEN_WOL_CONFIG);
 if (wol->wolopts & WAKE_MAGIC)
  wol_cfg |= 1UL << adapter->portnum;
 else
  wol_cfg &= ~(1UL << adapter->portnum);
 NXWR32(adapter, NETXEN_WOL_CONFIG, wol_cfg);

 return 0;
}
