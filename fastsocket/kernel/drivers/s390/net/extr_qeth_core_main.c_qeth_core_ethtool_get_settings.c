
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int link_type; scalar_t__ guestlan; } ;
struct qeth_card {TYPE_1__ info; } ;
struct net_device {struct qeth_card* ml_priv; } ;
struct ethtool_cmd {int supported; int advertising; void* port; int speed; int autoneg; int duplex; int transceiver; } ;
typedef enum qeth_link_types { ____Placeholder_qeth_link_types } qeth_link_types ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_1000baseT_Half ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_TP ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 void* PORT_FIBRE ;
 void* PORT_TP ;
 scalar_t__ QETH_CARD_TYPE_IQD ;





 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_1000baseT_Half ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_TP ;
 int XCVR_INTERNAL ;

int qeth_core_ethtool_get_settings(struct net_device *netdev,
     struct ethtool_cmd *ecmd)
{
 struct qeth_card *card = netdev->ml_priv;
 enum qeth_link_types link_type;

 if ((card->info.type == QETH_CARD_TYPE_IQD) || (card->info.guestlan))
  link_type = 132;
 else
  link_type = card->info.link_type;

 ecmd->transceiver = XCVR_INTERNAL;
 ecmd->supported = SUPPORTED_Autoneg;
 ecmd->advertising = ADVERTISED_Autoneg;
 ecmd->duplex = DUPLEX_FULL;
 ecmd->autoneg = AUTONEG_ENABLE;

 switch (link_type) {
 case 131:
 case 129:
  ecmd->supported |= SUPPORTED_10baseT_Half |
     SUPPORTED_10baseT_Full |
     SUPPORTED_100baseT_Half |
     SUPPORTED_100baseT_Full |
     SUPPORTED_TP;
  ecmd->advertising |= ADVERTISED_10baseT_Half |
     ADVERTISED_10baseT_Full |
     ADVERTISED_100baseT_Half |
     ADVERTISED_100baseT_Full |
     ADVERTISED_TP;
  ecmd->speed = SPEED_100;
  ecmd->port = PORT_TP;
  break;

 case 130:
 case 128:
  ecmd->supported |= SUPPORTED_10baseT_Half |
     SUPPORTED_10baseT_Full |
     SUPPORTED_100baseT_Half |
     SUPPORTED_100baseT_Full |
     SUPPORTED_1000baseT_Half |
     SUPPORTED_1000baseT_Full |
     SUPPORTED_FIBRE;
  ecmd->advertising |= ADVERTISED_10baseT_Half |
     ADVERTISED_10baseT_Full |
     ADVERTISED_100baseT_Half |
     ADVERTISED_100baseT_Full |
     ADVERTISED_1000baseT_Half |
     ADVERTISED_1000baseT_Full |
     ADVERTISED_FIBRE;
  ecmd->speed = SPEED_1000;
  ecmd->port = PORT_FIBRE;
  break;

 case 132:
  ecmd->supported |= SUPPORTED_10baseT_Half |
     SUPPORTED_10baseT_Full |
     SUPPORTED_100baseT_Half |
     SUPPORTED_100baseT_Full |
     SUPPORTED_1000baseT_Half |
     SUPPORTED_1000baseT_Full |
     SUPPORTED_10000baseT_Full |
     SUPPORTED_FIBRE;
  ecmd->advertising |= ADVERTISED_10baseT_Half |
     ADVERTISED_10baseT_Full |
     ADVERTISED_100baseT_Half |
     ADVERTISED_100baseT_Full |
     ADVERTISED_1000baseT_Half |
     ADVERTISED_1000baseT_Full |
     ADVERTISED_10000baseT_Full |
     ADVERTISED_FIBRE;
  ecmd->speed = SPEED_10000;
  ecmd->port = PORT_FIBRE;
  break;

 default:
  ecmd->supported |= SUPPORTED_10baseT_Half |
     SUPPORTED_10baseT_Full |
     SUPPORTED_TP;
  ecmd->advertising |= ADVERTISED_10baseT_Half |
     ADVERTISED_10baseT_Full |
     ADVERTISED_TP;
  ecmd->speed = SPEED_10;
  ecmd->port = PORT_TP;
 }

 return 0;
}
