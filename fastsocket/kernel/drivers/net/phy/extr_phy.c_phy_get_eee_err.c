
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int addr; int bus; } ;


 int MDIO_MMD_PCS ;
 int MDIO_PCS_EEE_WK_ERR ;
 int phy_read_mmd_indirect (int ,int ,int ,int ) ;

int phy_get_eee_err(struct phy_device *phydev)
{
 return phy_read_mmd_indirect(phydev->bus, MDIO_PCS_EEE_WK_ERR,
         MDIO_MMD_PCS, phydev->addr);

}
