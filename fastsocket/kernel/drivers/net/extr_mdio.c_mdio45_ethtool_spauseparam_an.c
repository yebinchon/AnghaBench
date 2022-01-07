
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_if_info {int mmds; int (* mdio_read ) (int ,int ,int ,int ) ;int prtad; int dev; int (* mdio_write ) (int ,int ,int ,int ,int) ;} ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;


 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 int MDIO_AN_ADVERTISE ;
 int MDIO_DEVS_AN ;
 int MDIO_MMD_AN ;
 int WARN_ON (int) ;
 int mdio45_nway_restart (struct mdio_if_info const*) ;
 int mii_advertise_flowctrl (int) ;
 int stub1 (int ,int ,int ,int ) ;
 int stub2 (int ,int ,int ,int ,int) ;

void mdio45_ethtool_spauseparam_an(const struct mdio_if_info *mdio,
       const struct ethtool_pauseparam *ecmd)
{
 int adv, old_adv;

 WARN_ON(!(mdio->mmds & MDIO_DEVS_AN));

 old_adv = mdio->mdio_read(mdio->dev, mdio->prtad, MDIO_MMD_AN,
      MDIO_AN_ADVERTISE);
 adv = old_adv & ~(ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM);
 if (ecmd->autoneg)
  adv |= mii_advertise_flowctrl(
   (ecmd->rx_pause ? FLOW_CTRL_RX : 0) |
   (ecmd->tx_pause ? FLOW_CTRL_TX : 0));
 if (adv != old_adv) {
  mdio->mdio_write(mdio->dev, mdio->prtad, MDIO_MMD_AN,
     MDIO_AN_ADVERTISE, adv);
  mdio45_nway_restart(mdio);
 }
}
