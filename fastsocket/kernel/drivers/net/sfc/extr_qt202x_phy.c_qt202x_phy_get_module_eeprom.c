
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ethtool_eeprom {int len; scalar_t__ offset; } ;
struct efx_nic {scalar_t__ phy_type; } ;


 int MDIO_MMD_PCS ;
 int MDIO_MMD_PMAPMD ;
 scalar_t__ PHY_TYPE_QT2025C ;
 int efx_mdio_read (struct efx_nic*,int,scalar_t__) ;

__attribute__((used)) static int qt202x_phy_get_module_eeprom(struct efx_nic *efx,
     struct ethtool_eeprom *ee, u8 *data)
{
 int mmd, reg_base, rc, i;

 if (efx->phy_type == PHY_TYPE_QT2025C) {
  mmd = MDIO_MMD_PCS;
  reg_base = 0xd000;
 } else {
  mmd = MDIO_MMD_PMAPMD;
  reg_base = 0x8007;
 }

 for (i = 0; i < ee->len; i++) {
  rc = efx_mdio_read(efx, mmd, reg_base + ee->offset + i);
  if (rc < 0)
   return rc;
  data[i] = rc;
 }

 return 0;
}
