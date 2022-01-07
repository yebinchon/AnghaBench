
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct vmxnet3_adapter {int lro; TYPE_3__* shared; } ;
struct net_device {int features; } ;
struct TYPE_4__ {int uptFeatures; } ;
struct TYPE_5__ {TYPE_1__ misc; } ;
struct TYPE_6__ {TYPE_2__ devRead; } ;


 int ETH_FLAG_LRO ;
 int NETIF_F_LRO ;
 int UPT1_F_LRO ;
 int VMXNET3_CMD_UPDATE_FEATURE ;
 int VMXNET3_REG_CMD ;
 int VMXNET3_WRITE_BAR1_REG (struct vmxnet3_adapter*,int ,int ) ;
 int cpu_to_le64 (int ) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
vmxnet3_set_flags(struct net_device *netdev, u32 data) {
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 u8 lro_requested = (data & ETH_FLAG_LRO) == 0 ? 0 : 1;
 u8 lro_present = (netdev->features & NETIF_F_LRO) == 0 ? 0 : 1;

 if (lro_requested ^ lro_present) {

  netdev->features ^= NETIF_F_LRO;


  adapter->lro = lro_requested;


  if (lro_requested)
   adapter->shared->devRead.misc.uptFeatures |=
      cpu_to_le64(UPT1_F_LRO);
  else
   adapter->shared->devRead.misc.uptFeatures &=
      cpu_to_le64(~UPT1_F_LRO);
  VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_CMD,
           VMXNET3_CMD_UPDATE_FEATURE);
 }
 return 0;
}
