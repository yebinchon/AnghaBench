
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucc_geth_private {struct ucc_geth_info* ug_info; } ;
struct ucc_geth_info {int * bdRingLenTx; int * bdRingLenRx; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_jumbo_pending; int rx_mini_pending; int rx_pending; void* tx_max_pending; void* rx_jumbo_max_pending; void* rx_mini_max_pending; void* rx_max_pending; } ;


 void* UCC_GETH_BD_RING_SIZE_MAX ;
 struct ucc_geth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
uec_get_ringparam(struct net_device *netdev,
                    struct ethtool_ringparam *ring)
{
 struct ucc_geth_private *ugeth = netdev_priv(netdev);
 struct ucc_geth_info *ug_info = ugeth->ug_info;
 int queue = 0;

 ring->rx_max_pending = UCC_GETH_BD_RING_SIZE_MAX;
 ring->rx_mini_max_pending = UCC_GETH_BD_RING_SIZE_MAX;
 ring->rx_jumbo_max_pending = UCC_GETH_BD_RING_SIZE_MAX;
 ring->tx_max_pending = UCC_GETH_BD_RING_SIZE_MAX;

 ring->rx_pending = ug_info->bdRingLenRx[queue];
 ring->rx_mini_pending = ug_info->bdRingLenRx[queue];
 ring->rx_jumbo_pending = ug_info->bdRingLenRx[queue];
 ring->tx_pending = ug_info->bdRingLenTx[queue];
}
