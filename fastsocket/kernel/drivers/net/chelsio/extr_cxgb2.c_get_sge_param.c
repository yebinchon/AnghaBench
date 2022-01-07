
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {struct adapter* ml_priv; } ;
struct ethtool_ringparam {int tx_pending; int rx_jumbo_pending; scalar_t__ rx_mini_pending; int rx_pending; int tx_max_pending; int rx_jumbo_max_pending; scalar_t__ rx_mini_max_pending; int rx_max_pending; } ;
struct TYPE_3__ {int * cmdQ_size; int * freelQ_size; } ;
struct TYPE_4__ {TYPE_1__ sge; } ;
struct adapter {TYPE_2__ params; } ;


 int MAX_CMDQ_ENTRIES ;
 int MAX_RX_BUFFERS ;
 int MAX_RX_JUMBO_BUFFERS ;
 scalar_t__ t1_is_T1B (struct adapter*) ;

__attribute__((used)) static void get_sge_param(struct net_device *dev, struct ethtool_ringparam *e)
{
 struct adapter *adapter = dev->ml_priv;
 int jumbo_fl = t1_is_T1B(adapter) ? 1 : 0;

 e->rx_max_pending = MAX_RX_BUFFERS;
 e->rx_mini_max_pending = 0;
 e->rx_jumbo_max_pending = MAX_RX_JUMBO_BUFFERS;
 e->tx_max_pending = MAX_CMDQ_ENTRIES;

 e->rx_pending = adapter->params.sge.freelQ_size[!jumbo_fl];
 e->rx_mini_pending = 0;
 e->rx_jumbo_pending = adapter->params.sge.freelQ_size[jumbo_fl];
 e->tx_pending = adapter->params.sge.cmdQ_size[0];
}
