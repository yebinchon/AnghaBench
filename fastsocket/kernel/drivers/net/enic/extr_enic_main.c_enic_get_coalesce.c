
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; int tx_coalesce_usecs; } ;
struct enic {int rx_coalesce_usecs; int tx_coalesce_usecs; } ;


 struct enic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enic_get_coalesce(struct net_device *netdev,
 struct ethtool_coalesce *ecmd)
{
 struct enic *enic = netdev_priv(netdev);

 ecmd->tx_coalesce_usecs = enic->tx_coalesce_usecs;
 ecmd->rx_coalesce_usecs = enic->rx_coalesce_usecs;

 return 0;
}
