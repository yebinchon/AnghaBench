
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct emac_instance {int * tah_dev; } ;


 struct emac_instance* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 emac_ethtool_get_rx_csum(struct net_device *ndev)
{
 struct emac_instance *dev = netdev_priv(ndev);

 return dev->tah_dev != ((void*)0);
}
