
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int net_dev; int phy_mode; } ;


 int LOOPBACKS_EXTERNAL (struct efx_nic*) ;
 int LOOPBACKS_WS ;
 int LOOPBACK_MASK (struct efx_nic*) ;
 scalar_t__ efx_phy_mode_disabled (int ) ;
 int falcon_reset_xaui (struct efx_nic*) ;
 int falcon_start_nic_stats (struct efx_nic*) ;
 int falcon_stop_nic_stats (struct efx_nic*) ;
 int falcon_xmac_link_ok (struct efx_nic*) ;
 int hw ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static bool falcon_xmac_link_ok_retry(struct efx_nic *efx, int tries)
{
 bool mac_up = falcon_xmac_link_ok(efx);

 if (LOOPBACK_MASK(efx) & LOOPBACKS_EXTERNAL(efx) & LOOPBACKS_WS ||
     efx_phy_mode_disabled(efx->phy_mode))

  return mac_up;

 falcon_stop_nic_stats(efx);

 while (!mac_up && tries) {
  netif_dbg(efx, hw, efx->net_dev, "bashing xaui\n");
  falcon_reset_xaui(efx);
  udelay(200);

  mac_up = falcon_xmac_link_ok(efx);
  --tries;
 }

 falcon_start_nic_stats(efx);

 return mac_up;
}
