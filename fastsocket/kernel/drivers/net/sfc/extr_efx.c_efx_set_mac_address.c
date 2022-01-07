
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {char* sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct efx_nic {int mac_lock; TYPE_1__* type; int net_dev; } ;
struct TYPE_2__ {int (* reconfigure_mac ) (struct efx_nic*) ;} ;


 int EINVAL ;
 int drv ;
 int efx_sriov_mac_address_changed (struct efx_nic*) ;
 int is_valid_ether_addr (char*) ;
 int memcpy (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netif_err (struct efx_nic*,int ,int ,char*,char*) ;
 int stub1 (struct efx_nic*) ;

__attribute__((used)) static int efx_set_mac_address(struct net_device *net_dev, void *data)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 struct sockaddr *addr = data;
 char *new_addr = addr->sa_data;

 if (!is_valid_ether_addr(new_addr)) {
  netif_err(efx, drv, efx->net_dev,
     "invalid ethernet MAC address requested: %pM\n",
     new_addr);
  return -EINVAL;
 }

 memcpy(net_dev->dev_addr, new_addr, net_dev->addr_len);
 efx_sriov_mac_address_changed(efx);


 mutex_lock(&efx->mac_lock);
 efx->type->reconfigure_mac(efx);
 mutex_unlock(&efx->mac_lock);

 return 0;
}
