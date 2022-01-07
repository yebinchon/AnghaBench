
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ if_port; int base_addr; } ;
struct ethtool_cmd {int supported; int advertising; scalar_t__ port; int autoneg; int transceiver; int phy_address; int duplex; int speed; } ;
struct eepro_local {int* word; } ;


 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_AUI ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_BNC ;
 int ADVERTISED_TP ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 scalar_t__ GetBit (int,int ) ;
 int SPEED_10 ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_AUI ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_BNC ;
 int SUPPORTED_TP ;
 scalar_t__ TPE ;
 int XCVR_INTERNAL ;
 int ee_AutoNeg ;
 int ee_Duplex ;
 int ee_PortAUI ;
 int ee_PortBNC ;
 int ee_PortTPE ;
 struct eepro_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static int eepro_ethtool_get_settings(struct net_device *dev,
     struct ethtool_cmd *cmd)
{
 struct eepro_local *lp = netdev_priv(dev);

 cmd->supported = SUPPORTED_10baseT_Half |
    SUPPORTED_10baseT_Full |
    SUPPORTED_Autoneg;
 cmd->advertising = ADVERTISED_10baseT_Half |
    ADVERTISED_10baseT_Full |
    ADVERTISED_Autoneg;

 if (GetBit(lp->word[5], ee_PortTPE)) {
  cmd->supported |= SUPPORTED_TP;
  cmd->advertising |= ADVERTISED_TP;
 }
 if (GetBit(lp->word[5], ee_PortBNC)) {
  cmd->supported |= SUPPORTED_BNC;
  cmd->advertising |= ADVERTISED_BNC;
 }
 if (GetBit(lp->word[5], ee_PortAUI)) {
  cmd->supported |= SUPPORTED_AUI;
  cmd->advertising |= ADVERTISED_AUI;
 }

 cmd->speed = SPEED_10;

 if (dev->if_port == TPE && lp->word[1] & ee_Duplex) {
  cmd->duplex = DUPLEX_FULL;
 }
 else {
  cmd->duplex = DUPLEX_HALF;
 }

 cmd->port = dev->if_port;
 cmd->phy_address = dev->base_addr;
 cmd->transceiver = XCVR_INTERNAL;

 if (lp->word[0] & ee_AutoNeg) {
  cmd->autoneg = 1;
 }

 return 0;
}
