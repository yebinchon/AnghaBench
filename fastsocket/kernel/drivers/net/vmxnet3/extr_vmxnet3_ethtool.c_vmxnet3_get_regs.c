
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vmxnet3_adapter {int num_tx_queues; int num_rx_queues; TYPE_6__* rx_queue; TYPE_3__* tx_queue; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct TYPE_11__ {scalar_t__ gen; scalar_t__ next2proc; } ;
struct TYPE_12__ {TYPE_5__ comp_ring; TYPE_4__* rx_ring; } ;
struct TYPE_10__ {scalar_t__ gen; scalar_t__ next2comp; scalar_t__ next2fill; } ;
struct TYPE_8__ {scalar_t__ gen; scalar_t__ next2proc; } ;
struct TYPE_7__ {scalar_t__ gen; scalar_t__ next2comp; scalar_t__ next2fill; } ;
struct TYPE_9__ {scalar_t__ stopped; TYPE_2__ comp_ring; TYPE_1__ tx_ring; } ;


 int memset (void*,int ,int ) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 int vmxnet3_get_regs_len (struct net_device*) ;

__attribute__((used)) static void
vmxnet3_get_regs(struct net_device *netdev, struct ethtool_regs *regs, void *p)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 u32 *buf = p;
 int i = 0, j = 0;

 memset(p, 0, vmxnet3_get_regs_len(netdev));

 regs->version = 1;




 for (i = 0; i < adapter->num_tx_queues; i++) {
  buf[j++] = adapter->tx_queue[i].tx_ring.next2fill;
  buf[j++] = adapter->tx_queue[i].tx_ring.next2comp;
  buf[j++] = adapter->tx_queue[i].tx_ring.gen;
  buf[j++] = 0;

  buf[j++] = adapter->tx_queue[i].comp_ring.next2proc;
  buf[j++] = adapter->tx_queue[i].comp_ring.gen;
  buf[j++] = adapter->tx_queue[i].stopped;
  buf[j++] = 0;
 }

 for (i = 0; i < adapter->num_rx_queues; i++) {
  buf[j++] = adapter->rx_queue[i].rx_ring[0].next2fill;
  buf[j++] = adapter->rx_queue[i].rx_ring[0].next2comp;
  buf[j++] = adapter->rx_queue[i].rx_ring[0].gen;
  buf[j++] = 0;

  buf[j++] = adapter->rx_queue[i].rx_ring[1].next2fill;
  buf[j++] = adapter->rx_queue[i].rx_ring[1].next2comp;
  buf[j++] = adapter->rx_queue[i].rx_ring[1].gen;
  buf[j++] = 0;

  buf[j++] = adapter->rx_queue[i].comp_ring.next2proc;
  buf[j++] = adapter->rx_queue[i].comp_ring.gen;
  buf[j++] = 0;
  buf[j++] = 0;
 }

}
