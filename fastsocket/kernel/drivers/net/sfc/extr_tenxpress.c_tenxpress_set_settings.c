
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_cmd {int autoneg; } ;
struct efx_nic {int dummy; } ;


 int EINVAL ;
 int efx_mdio_set_settings (struct efx_nic*,struct ethtool_cmd*) ;

__attribute__((used)) static int tenxpress_set_settings(struct efx_nic *efx, struct ethtool_cmd *ecmd)
{
 if (!ecmd->autoneg)
  return -EINVAL;

 return efx_mdio_set_settings(efx, ecmd);
}
