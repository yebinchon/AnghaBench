
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxge_fifo {scalar_t__ tx_steering_type; int queue_state; int driver_id; struct net_device* ndev; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ TX_MULTIQ_STEERING ;
 int VPATH_QUEUE_STOP ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 int netif_tx_stop_queue (struct netdev_queue*) ;

void vxge_stop_tx_queue(struct vxge_fifo *fifo)
{
 struct net_device *dev = fifo->ndev;

 struct netdev_queue *txq = ((void*)0);
 if (fifo->tx_steering_type == TX_MULTIQ_STEERING)
  txq = netdev_get_tx_queue(dev, fifo->driver_id);
 else {
  txq = netdev_get_tx_queue(dev, 0);
  fifo->queue_state = VPATH_QUEUE_STOP;
 }

 netif_tx_stop_queue(txq);
}
