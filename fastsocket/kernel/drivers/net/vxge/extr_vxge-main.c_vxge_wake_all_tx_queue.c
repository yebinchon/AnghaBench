
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tx_steering_type; } ;
struct vxgedev {int no_of_vpath; TYPE_3__* vpaths; TYPE_1__ config; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int queue_state; } ;
struct TYPE_6__ {TYPE_2__ fifo; } ;


 scalar_t__ TX_MULTIQ_STEERING ;
 int VPATH_QUEUE_START ;
 int netif_tx_wake_all_queues (struct net_device*) ;

__attribute__((used)) static void vxge_wake_all_tx_queue(struct vxgedev *vdev)
{
 int i;
 struct net_device *dev = vdev->ndev;

 if (vdev->config.tx_steering_type != TX_MULTIQ_STEERING) {
  for (i = 0; i < vdev->no_of_vpath; i++)
   vdev->vpaths[i].fifo.queue_state = VPATH_QUEUE_START;
 }
 netif_tx_wake_all_queues(dev);
}
