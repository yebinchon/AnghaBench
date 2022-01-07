
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int PHYAddr; int flags; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int duplex; int speed; int autoneg; void* advertising; int phy_address; int port; void* supported; int transceiver; } ;


 int PORT_FIBRE ;
 int PORT_TP ;
 int QL_LINK_OPTICAL ;
 int XCVR_INTERNAL ;
 struct ql3_adapter* netdev_priv (struct net_device*) ;
 int ql_get_auto_cfg_status (struct ql3_adapter*) ;
 int ql_get_full_dup (struct ql3_adapter*) ;
 int ql_get_speed (struct ql3_adapter*) ;
 void* ql_supported_modes (struct ql3_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ql_get_settings(struct net_device *ndev, struct ethtool_cmd *ecmd)
{
 struct ql3_adapter *qdev = netdev_priv(ndev);

 ecmd->transceiver = XCVR_INTERNAL;
 ecmd->supported = ql_supported_modes(qdev);

 if (test_bit(QL_LINK_OPTICAL,&qdev->flags)) {
  ecmd->port = PORT_FIBRE;
 } else {
  ecmd->port = PORT_TP;
  ecmd->phy_address = qdev->PHYAddr;
 }
 ecmd->advertising = ql_supported_modes(qdev);
 ecmd->autoneg = ql_get_auto_cfg_status(qdev);
 ecmd->speed = ql_get_speed(qdev);
 ecmd->duplex = ql_get_full_dup(qdev);
 return 0;
}
