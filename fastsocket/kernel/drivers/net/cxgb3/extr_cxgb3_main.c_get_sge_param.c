
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qset_params {int * txq_size; int jumbo_size; int rspq_size; int fl_size; } ;
struct port_info {size_t first_qset; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_jumbo_pending; int rx_mini_pending; int rx_pending; int tx_max_pending; int rx_jumbo_max_pending; int rx_max_pending; } ;
struct TYPE_3__ {struct qset_params* qset; } ;
struct TYPE_4__ {TYPE_1__ sge; } ;
struct adapter {TYPE_2__ params; } ;


 int MAX_RX_BUFFERS ;
 int MAX_RX_JUMBO_BUFFERS ;
 int MAX_TXQ_ENTRIES ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static void get_sge_param(struct net_device *dev, struct ethtool_ringparam *e)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;
 const struct qset_params *q = &adapter->params.sge.qset[pi->first_qset];

 e->rx_max_pending = MAX_RX_BUFFERS;
 e->rx_jumbo_max_pending = MAX_RX_JUMBO_BUFFERS;
 e->tx_max_pending = MAX_TXQ_ENTRIES;

 e->rx_pending = q->fl_size;
 e->rx_mini_pending = q->rspq_size;
 e->rx_jumbo_pending = q->jumbo_size;
 e->tx_pending = q->txq_size[0];
}
