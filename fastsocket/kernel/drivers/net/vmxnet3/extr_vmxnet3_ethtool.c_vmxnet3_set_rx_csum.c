
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vmxnet3_adapter {scalar_t__ rxcsum; int cmd_lock; TYPE_1__* shared; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int uptFeatures; } ;
struct TYPE_6__ {TYPE_2__ misc; } ;
struct TYPE_4__ {TYPE_3__ devRead; } ;


 int UPT1_F_RXCSUM ;
 int VMXNET3_CMD_UPDATE_FEATURE ;
 int VMXNET3_REG_CMD ;
 int VMXNET3_WRITE_BAR1_REG (struct vmxnet3_adapter*,int ,int ) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
vmxnet3_set_rx_csum(struct net_device *netdev, u32 val)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 unsigned long flags;

 if (adapter->rxcsum != val) {
  adapter->rxcsum = val;
  if (netif_running(netdev)) {
   if (val)
    adapter->shared->devRead.misc.uptFeatures |=
    UPT1_F_RXCSUM;
   else
    adapter->shared->devRead.misc.uptFeatures &=
    ~UPT1_F_RXCSUM;

   spin_lock_irqsave(&adapter->cmd_lock, flags);
   VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_CMD,
            VMXNET3_CMD_UPDATE_FEATURE);
   spin_unlock_irqrestore(&adapter->cmd_lock, flags);
  }
 }
 return 0;
}
