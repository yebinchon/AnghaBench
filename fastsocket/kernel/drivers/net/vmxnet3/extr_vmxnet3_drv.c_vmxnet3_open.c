
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_adapter {int num_tx_queues; TYPE_1__* tx_queue; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int tx_lock; } ;


 int VMXNET3_DEF_RX_RING_SIZE ;
 int VMXNET3_DEF_TX_RING_SIZE ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_init (int *) ;
 int vmxnet3_activate_dev (struct vmxnet3_adapter*) ;
 int vmxnet3_create_queues (struct vmxnet3_adapter*,int ,int ,int ) ;
 int vmxnet3_rq_destroy_all (struct vmxnet3_adapter*) ;
 int vmxnet3_tq_destroy_all (struct vmxnet3_adapter*) ;

__attribute__((used)) static int
vmxnet3_open(struct net_device *netdev)
{
 struct vmxnet3_adapter *adapter;
 int err, i;

 adapter = netdev_priv(netdev);

 for (i = 0; i < adapter->num_tx_queues; i++)
  spin_lock_init(&adapter->tx_queue[i].tx_lock);

 err = vmxnet3_create_queues(adapter, VMXNET3_DEF_TX_RING_SIZE,
        VMXNET3_DEF_RX_RING_SIZE,
        VMXNET3_DEF_RX_RING_SIZE);
 if (err)
  goto queue_err;

 err = vmxnet3_activate_dev(adapter);
 if (err)
  goto activate_err;

 return 0;

activate_err:
 vmxnet3_rq_destroy_all(adapter);
 vmxnet3_tq_destroy_all(adapter);
queue_err:
 return err;
}
