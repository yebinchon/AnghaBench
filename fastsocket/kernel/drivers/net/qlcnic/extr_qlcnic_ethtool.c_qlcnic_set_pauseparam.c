
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {int dev; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ autoneg; scalar_t__ rx_pause; } ;
typedef int __u32 ;
struct TYPE_2__ {int physical_port; scalar_t__ port_type; } ;


 int EIO ;
 int EOPNOTSUPP ;
 scalar_t__ QLCNIC_GBE ;
 int QLCNIC_NIU_GB_MAC_CONFIG_0 (int) ;
 int QLCNIC_NIU_GB_PAUSE_CTL ;
 int QLCNIC_NIU_MAX_GBE_PORTS ;
 int QLCNIC_NIU_MAX_XG_PORTS ;
 int QLCNIC_NIU_XG_PAUSE_CTL ;
 scalar_t__ QLCNIC_XGBE ;
 int QLCRD32 (struct qlcnic_adapter*,int ) ;
 int QLCWR32 (struct qlcnic_adapter*,int ,int ) ;
 int dev_err (int *,char*,scalar_t__) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_set_pauseparam (struct qlcnic_adapter*,struct ethtool_pauseparam*) ;
 int qlcnic_gb_rx_flowctl (int ) ;
 int qlcnic_gb_set_gb0_mask (int ) ;
 int qlcnic_gb_set_gb1_mask (int ) ;
 int qlcnic_gb_set_gb2_mask (int ) ;
 int qlcnic_gb_set_gb3_mask (int ) ;
 int qlcnic_gb_unset_gb0_mask (int ) ;
 int qlcnic_gb_unset_gb1_mask (int ) ;
 int qlcnic_gb_unset_gb2_mask (int ) ;
 int qlcnic_gb_unset_gb3_mask (int ) ;
 int qlcnic_gb_unset_rx_flowctl (int ) ;
 int qlcnic_xg_set_xg0_mask (int ) ;
 int qlcnic_xg_set_xg1_mask (int ) ;
 int qlcnic_xg_unset_xg0_mask (int ) ;
 int qlcnic_xg_unset_xg1_mask (int ) ;

__attribute__((used)) static int
qlcnic_set_pauseparam(struct net_device *netdev,
     struct ethtool_pauseparam *pause)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 int port = adapter->ahw->physical_port;
 __u32 val;

 if (qlcnic_83xx_check(adapter))
  return qlcnic_83xx_set_pauseparam(adapter, pause);


 if (adapter->ahw->port_type == QLCNIC_GBE) {
  if ((port < 0) || (port > QLCNIC_NIU_MAX_GBE_PORTS))
   return -EIO;

  val = QLCRD32(adapter, QLCNIC_NIU_GB_MAC_CONFIG_0(port));

  if (pause->rx_pause)
   qlcnic_gb_rx_flowctl(val);
  else
   qlcnic_gb_unset_rx_flowctl(val);

  QLCWR32(adapter, QLCNIC_NIU_GB_MAC_CONFIG_0(port),
    val);
  QLCWR32(adapter, QLCNIC_NIU_GB_MAC_CONFIG_0(port), val);

  val = QLCRD32(adapter, QLCNIC_NIU_GB_PAUSE_CTL);
  switch (port) {
  case 0:
   if (pause->tx_pause)
    qlcnic_gb_unset_gb0_mask(val);
   else
    qlcnic_gb_set_gb0_mask(val);
   break;
  case 1:
   if (pause->tx_pause)
    qlcnic_gb_unset_gb1_mask(val);
   else
    qlcnic_gb_set_gb1_mask(val);
   break;
  case 2:
   if (pause->tx_pause)
    qlcnic_gb_unset_gb2_mask(val);
   else
    qlcnic_gb_set_gb2_mask(val);
   break;
  case 3:
  default:
   if (pause->tx_pause)
    qlcnic_gb_unset_gb3_mask(val);
   else
    qlcnic_gb_set_gb3_mask(val);
   break;
  }
  QLCWR32(adapter, QLCNIC_NIU_GB_PAUSE_CTL, val);
 } else if (adapter->ahw->port_type == QLCNIC_XGBE) {
  if (!pause->rx_pause || pause->autoneg)
   return -EOPNOTSUPP;

  if ((port < 0) || (port > QLCNIC_NIU_MAX_XG_PORTS))
   return -EIO;

  val = QLCRD32(adapter, QLCNIC_NIU_XG_PAUSE_CTL);
  if (port == 0) {
   if (pause->tx_pause)
    qlcnic_xg_unset_xg0_mask(val);
   else
    qlcnic_xg_set_xg0_mask(val);
  } else {
   if (pause->tx_pause)
    qlcnic_xg_unset_xg1_mask(val);
   else
    qlcnic_xg_set_xg1_mask(val);
  }
  QLCWR32(adapter, QLCNIC_NIU_XG_PAUSE_CTL, val);
 } else {
  dev_err(&netdev->dev, "Unknown board type: %x\n",
    adapter->ahw->port_type);
 }
 return 0;
}
