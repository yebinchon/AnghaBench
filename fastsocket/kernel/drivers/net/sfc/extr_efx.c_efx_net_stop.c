
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct efx_nic {int net_dev; } ;


 int efx_stop_all (struct efx_nic*) ;
 int ifdown ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static int efx_net_stop(struct net_device *net_dev)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 netif_dbg(efx, ifdown, efx->net_dev, "closing on CPU %d\n",
    raw_smp_processor_id());


 efx_stop_all(efx);

 return 0;
}
