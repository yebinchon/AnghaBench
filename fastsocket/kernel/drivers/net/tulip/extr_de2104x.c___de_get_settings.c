
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_cmd {int speed; int autoneg; int duplex; int port; int advertising; scalar_t__ phy_address; int transceiver; int supported; } ;
struct de_private {int media_type; scalar_t__ media_lock; int media_advertise; int media_supported; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int FullDuplex ;
 int MacMode ;
 int PORT_AUI ;
 int PORT_BNC ;
 int PORT_TP ;
 int SPEED_10 ;
 int XCVR_INTERNAL ;
 int dr32 (int ) ;

__attribute__((used)) static int __de_get_settings(struct de_private *de, struct ethtool_cmd *ecmd)
{
 ecmd->supported = de->media_supported;
 ecmd->transceiver = XCVR_INTERNAL;
 ecmd->phy_address = 0;
 ecmd->advertising = de->media_advertise;

 switch (de->media_type) {
 case 129:
  ecmd->port = PORT_AUI;
  ecmd->speed = 5;
  break;
 case 128:
  ecmd->port = PORT_BNC;
  ecmd->speed = 2;
  break;
 default:
  ecmd->port = PORT_TP;
  ecmd->speed = SPEED_10;
  break;
 }

 if (dr32(MacMode) & FullDuplex)
  ecmd->duplex = DUPLEX_FULL;
 else
  ecmd->duplex = DUPLEX_HALF;

 if (de->media_lock)
  ecmd->autoneg = AUTONEG_DISABLE;
 else
  ecmd->autoneg = AUTONEG_ENABLE;



 return 0;
}
