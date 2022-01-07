
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {unsigned long features; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int offload_features; } ;


 unsigned long NETIF_F_TSO ;
 unsigned long NETIF_F_TSO6 ;
 int NETIF_F_V6_CSUM ;
 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int efx_ethtool_set_tso(struct net_device *net_dev, u32 enable)
{
 struct efx_nic *efx __attribute__ ((unused)) = netdev_priv(net_dev);
 unsigned long features;

 features = NETIF_F_TSO;
 if (efx->type->offload_features & NETIF_F_V6_CSUM)
  features |= NETIF_F_TSO6;

 if (enable)
  net_dev->features |= features;
 else
  net_dev->features &= ~features;

 return 0;
}
