
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct efx_nic {TYPE_2__* phy_op; int phy_mode; int net_dev; int mac_lock; } ;
struct TYPE_6__ {TYPE_1__* type; } ;
struct TYPE_5__ {int (* poll ) (struct efx_nic*) ;} ;
struct TYPE_4__ {int (* monitor ) (struct efx_nic*) ;} ;


 int BUG_ON (int) ;
 int ERANGE ;
 scalar_t__ LOOPBACK_INTERNAL (struct efx_nic*) ;
 int PHY_MODE_LOW_POWER ;
 int WARN_ON (int) ;
 int __efx_reconfigure_port (struct efx_nic*) ;
 int efx_link_status_changed (struct efx_nic*) ;
 TYPE_3__* falcon_board (struct efx_nic*) ;
 int falcon_deconfigure_mac_wrapper (struct efx_nic*) ;
 int falcon_loopback_link_poll (struct efx_nic*) ;
 int falcon_poll_xmac (struct efx_nic*) ;
 int falcon_reconfigure_xmac (struct efx_nic*) ;
 int falcon_reset_macs (struct efx_nic*) ;
 int falcon_start_nic_stats (struct efx_nic*) ;
 int falcon_stop_nic_stats (struct efx_nic*) ;
 int hw ;
 int mutex_is_locked (int *) ;
 int netif_err (struct efx_nic*,int ,int ,char*,char*) ;
 int stub1 (struct efx_nic*) ;
 int stub2 (struct efx_nic*) ;

__attribute__((used)) static void falcon_monitor(struct efx_nic *efx)
{
 bool link_changed;
 int rc;

 BUG_ON(!mutex_is_locked(&efx->mac_lock));

 rc = falcon_board(efx)->type->monitor(efx);
 if (rc) {
  netif_err(efx, hw, efx->net_dev,
     "Board sensor %s; shutting down PHY\n",
     (rc == -ERANGE) ? "reported fault" : "failed");
  efx->phy_mode |= PHY_MODE_LOW_POWER;
  rc = __efx_reconfigure_port(efx);
  WARN_ON(rc);
 }

 if (LOOPBACK_INTERNAL(efx))
  link_changed = falcon_loopback_link_poll(efx);
 else
  link_changed = efx->phy_op->poll(efx);

 if (link_changed) {
  falcon_stop_nic_stats(efx);
  falcon_deconfigure_mac_wrapper(efx);

  falcon_reset_macs(efx);
  rc = falcon_reconfigure_xmac(efx);
  BUG_ON(rc);

  falcon_start_nic_stats(efx);

  efx_link_status_changed(efx);
 }

 falcon_poll_xmac(efx);
}
