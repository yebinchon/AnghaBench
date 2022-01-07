
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct efx_nic {int port_enabled; int net_dev; } ;


 int RESET_TYPE_TX_WATCHDOG ;
 int efx_schedule_reset (struct efx_nic*,int ) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netif_err (struct efx_nic*,int ,int ,char*,int ) ;
 int tx_err ;

__attribute__((used)) static void efx_watchdog(struct net_device *net_dev)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 netif_err(efx, tx_err, efx->net_dev,
    "TX stuck with port_enabled=%d: resetting channels\n",
    efx->port_enabled);

 efx_schedule_reset(efx, RESET_TYPE_TX_WATCHDOG);
}
