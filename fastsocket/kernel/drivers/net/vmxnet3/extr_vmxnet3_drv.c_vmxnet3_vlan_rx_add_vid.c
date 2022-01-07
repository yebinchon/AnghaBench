
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct vmxnet3_adapter {int cmd_lock; TYPE_3__* shared; } ;
struct net_device {int flags; } ;
struct TYPE_4__ {int * vfTable; } ;
struct TYPE_5__ {TYPE_1__ rxFilterConf; } ;
struct TYPE_6__ {TYPE_2__ devRead; } ;


 int IFF_PROMISC ;
 int VMXNET3_CMD_UPDATE_VLAN_FILTERS ;
 int VMXNET3_REG_CMD ;
 int VMXNET3_SET_VFTABLE_ENTRY (int *,int ) ;
 int VMXNET3_WRITE_BAR1_REG (struct vmxnet3_adapter*,int ,int ) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
vmxnet3_vlan_rx_add_vid(struct net_device *netdev, u16 vid)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);

 if (!(netdev->flags & IFF_PROMISC)) {
  u32 *vfTable = adapter->shared->devRead.rxFilterConf.vfTable;
  unsigned long flags;

  VMXNET3_SET_VFTABLE_ENTRY(vfTable, vid);
  spin_lock_irqsave(&adapter->cmd_lock, flags);
  VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_CMD,
           VMXNET3_CMD_UPDATE_VLAN_FILTERS);
  spin_unlock_irqrestore(&adapter->cmd_lock, flags);
 }

}
