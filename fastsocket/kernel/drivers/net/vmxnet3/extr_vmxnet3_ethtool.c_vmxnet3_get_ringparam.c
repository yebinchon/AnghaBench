
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vmxnet3_adapter {TYPE_4__* tx_queue; TYPE_2__* rx_queue; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; int tx_pending; int rx_pending; scalar_t__ rx_jumbo_max_pending; scalar_t__ rx_mini_max_pending; int tx_max_pending; int rx_max_pending; } ;
struct TYPE_7__ {int size; } ;
struct TYPE_8__ {TYPE_3__ tx_ring; } ;
struct TYPE_6__ {TYPE_1__* rx_ring; } ;
struct TYPE_5__ {int size; } ;


 int VMXNET3_RX_RING_MAX_SIZE ;
 int VMXNET3_TX_RING_MAX_SIZE ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
vmxnet3_get_ringparam(struct net_device *netdev,
        struct ethtool_ringparam *param)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);

 param->rx_max_pending = VMXNET3_RX_RING_MAX_SIZE;
 param->tx_max_pending = VMXNET3_TX_RING_MAX_SIZE;
 param->rx_mini_max_pending = 0;
 param->rx_jumbo_max_pending = 0;

 param->rx_pending = adapter->rx_queue[0].rx_ring[0].size;
 param->tx_pending = adapter->tx_queue[0].tx_ring.size;
 param->rx_mini_pending = 0;
 param->rx_jumbo_pending = 0;
}
