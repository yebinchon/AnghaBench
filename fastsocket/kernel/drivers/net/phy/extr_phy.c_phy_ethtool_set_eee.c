
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int addr; int bus; } ;
struct ethtool_eee {int advertised; } ;


 int MDIO_AN_EEE_ADV ;
 int MDIO_MMD_AN ;
 int ethtool_adv_to_mmd_eee_adv_t (int ) ;
 int phy_write_mmd_indirect (int ,int ,int ,int ,int) ;

int phy_ethtool_set_eee(struct phy_device *phydev, struct ethtool_eee *data)
{
 int val;

 val = ethtool_adv_to_mmd_eee_adv_t(data->advertised);
 phy_write_mmd_indirect(phydev->bus, MDIO_AN_EEE_ADV, MDIO_MMD_AN,
          phydev->addr, val);

 return 0;
}
