
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_modinfo {int eeprom_len; int type; } ;
struct efx_nic {struct efx_mcdi_phy_data* phy_data; } ;
struct efx_mcdi_phy_data {int media; } ;


 int EOPNOTSUPP ;
 int ETH_MODULE_SFF_8079 ;
 int ETH_MODULE_SFF_8079_LEN ;


__attribute__((used)) static int efx_mcdi_phy_get_module_info(struct efx_nic *efx,
     struct ethtool_modinfo *modinfo)
{
 struct efx_mcdi_phy_data *phy_cfg = efx->phy_data;

 switch (phy_cfg->media) {
 case 128:
  modinfo->type = ETH_MODULE_SFF_8079;
  modinfo->eeprom_len = ETH_MODULE_SFF_8079_LEN;
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
