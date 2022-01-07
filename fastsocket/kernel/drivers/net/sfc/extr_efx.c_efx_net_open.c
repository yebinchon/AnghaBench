
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct efx_nic {int phy_mode; int net_dev; } ;


 int EBUSY ;
 int EIO ;
 int PHY_MODE_SPECIAL ;
 int RESET_TYPE_ALL ;
 int efx_check_disabled (struct efx_nic*) ;
 int efx_link_status_changed (struct efx_nic*) ;
 scalar_t__ efx_mcdi_poll_reboot (struct efx_nic*) ;
 scalar_t__ efx_reset (struct efx_nic*,int ) ;
 int efx_selftest_async_start (struct efx_nic*) ;
 int efx_start_all (struct efx_nic*) ;
 int ifup ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static int efx_net_open(struct net_device *net_dev)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 int rc;

 netif_dbg(efx, ifup, efx->net_dev, "opening device on CPU %d\n",
    raw_smp_processor_id());

 rc = efx_check_disabled(efx);
 if (rc)
  return rc;
 if (efx->phy_mode & PHY_MODE_SPECIAL)
  return -EBUSY;
 if (efx_mcdi_poll_reboot(efx) && efx_reset(efx, RESET_TYPE_ALL))
  return -EIO;



 efx_link_status_changed(efx);

 efx_start_all(efx);
 efx_selftest_async_start(efx);
 return 0;
}
