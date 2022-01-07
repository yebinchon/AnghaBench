
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int link_status; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int supported; int advertising; int duplex; int speed; int port; int autoneg; int transceiver; } ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_TP ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int PORT_FIBRE ;
 int PORT_TP ;
 int SPEED_10000 ;
 int STS_LINK_TYPE_10GBASET ;
 int STS_LINK_TYPE_MASK ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_TP ;
 int XCVR_EXTERNAL ;
 struct ql_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ql_get_settings(struct net_device *ndev,
         struct ethtool_cmd *ecmd)
{
 struct ql_adapter *qdev = netdev_priv(ndev);

 ecmd->supported = SUPPORTED_10000baseT_Full;
 ecmd->advertising = ADVERTISED_10000baseT_Full;
 ecmd->transceiver = XCVR_EXTERNAL;
 if ((qdev->link_status & STS_LINK_TYPE_MASK) ==
    STS_LINK_TYPE_10GBASET) {
  ecmd->supported |= (SUPPORTED_TP | SUPPORTED_Autoneg);
  ecmd->advertising |= (ADVERTISED_TP | ADVERTISED_Autoneg);
  ecmd->port = PORT_TP;
  ecmd->autoneg = AUTONEG_ENABLE;
 } else {
  ecmd->supported |= SUPPORTED_FIBRE;
  ecmd->advertising |= ADVERTISED_FIBRE;
  ecmd->port = PORT_FIBRE;
 }

 ecmd->speed = SPEED_10000;
 ecmd->duplex = DUPLEX_FULL;

 return 0;
}
