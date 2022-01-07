
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_cmd {int dummy; } ;
struct efx_nic {int mdio; } ;


 int mdio45_ethtool_gset (int *,struct ethtool_cmd*) ;

__attribute__((used)) static void txc43128_get_settings(struct efx_nic *efx, struct ethtool_cmd *ecmd)
{
 mdio45_ethtool_gset(&efx->mdio, ecmd);
}
