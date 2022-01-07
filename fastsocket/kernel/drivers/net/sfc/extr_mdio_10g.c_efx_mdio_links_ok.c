
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {scalar_t__ loopback_mode; int mdio; int phy_mode; } ;


 int LOOPBACKS_WS ;
 scalar_t__ LOOPBACK_INTERNAL (struct efx_nic*) ;
 int LOOPBACK_MASK (struct efx_nic*) ;
 scalar_t__ LOOPBACK_PCS ;
 scalar_t__ LOOPBACK_PHYXS ;
 scalar_t__ LOOPBACK_PMAPMD ;
 unsigned int MDIO_DEVS_AN ;
 unsigned int MDIO_DEVS_PCS ;
 unsigned int MDIO_DEVS_PHYXS ;
 unsigned int MDIO_DEVS_PMAPMD ;
 scalar_t__ efx_phy_mode_disabled (int ) ;
 int mdio45_links_ok (int *,unsigned int) ;

bool efx_mdio_links_ok(struct efx_nic *efx, unsigned int mmd_mask)
{


 if (LOOPBACK_INTERNAL(efx))
  return 1;
 else if (LOOPBACK_MASK(efx) & LOOPBACKS_WS)
  return 0;
 else if (efx_phy_mode_disabled(efx->phy_mode))
  return 0;
 else if (efx->loopback_mode == LOOPBACK_PHYXS)
  mmd_mask &= ~(MDIO_DEVS_PHYXS |
         MDIO_DEVS_PCS |
         MDIO_DEVS_PMAPMD |
         MDIO_DEVS_AN);
 else if (efx->loopback_mode == LOOPBACK_PCS)
  mmd_mask &= ~(MDIO_DEVS_PCS |
         MDIO_DEVS_PMAPMD |
         MDIO_DEVS_AN);
 else if (efx->loopback_mode == LOOPBACK_PMAPMD)
  mmd_mask &= ~(MDIO_DEVS_PMAPMD |
         MDIO_DEVS_AN);

 return mdio45_links_ok(&efx->mdio, mmd_mask);
}
