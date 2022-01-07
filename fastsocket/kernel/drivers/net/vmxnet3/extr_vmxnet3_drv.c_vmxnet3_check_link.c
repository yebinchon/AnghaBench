
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmxnet3_adapter {int link_speed; int num_tx_queues; int * tx_queue; int netdev; int cmd_lock; } ;


 int VMXNET3_CMD_GET_LINK ;
 int VMXNET3_READ_BAR1_REG (struct vmxnet3_adapter*,int ) ;
 int VMXNET3_REG_CMD ;
 int VMXNET3_WRITE_BAR1_REG (struct vmxnet3_adapter*,int ,int ) ;
 int netdev_info (int ,char*,...) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vmxnet3_tq_start (int *,struct vmxnet3_adapter*) ;
 int vmxnet3_tq_stop (int *,struct vmxnet3_adapter*) ;

__attribute__((used)) static void
vmxnet3_check_link(struct vmxnet3_adapter *adapter, bool affectTxQueue)
{
 u32 ret;
 int i;
 unsigned long flags;

 spin_lock_irqsave(&adapter->cmd_lock, flags);
 VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_CMD, VMXNET3_CMD_GET_LINK);
 ret = VMXNET3_READ_BAR1_REG(adapter, VMXNET3_REG_CMD);
 spin_unlock_irqrestore(&adapter->cmd_lock, flags);

 adapter->link_speed = ret >> 16;
 if (ret & 1) {
  netdev_info(adapter->netdev, "NIC Link is Up %d Mbps\n",
       adapter->link_speed);
  netif_carrier_on(adapter->netdev);

  if (affectTxQueue) {
   for (i = 0; i < adapter->num_tx_queues; i++)
    vmxnet3_tq_start(&adapter->tx_queue[i],
       adapter);
  }
 } else {
  netdev_info(adapter->netdev, "NIC Link is Down\n");
  netif_carrier_off(adapter->netdev);

  if (affectTxQueue) {
   for (i = 0; i < adapter->num_tx_queues; i++)
    vmxnet3_tq_stop(&adapter->tx_queue[i], adapter);
  }
 }
}
