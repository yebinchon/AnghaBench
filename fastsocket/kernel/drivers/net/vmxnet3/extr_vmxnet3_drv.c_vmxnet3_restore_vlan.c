
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct vmxnet3_adapter {scalar_t__ vlan_grp; TYPE_3__* shared; } ;
struct TYPE_4__ {int * vfTable; } ;
struct TYPE_5__ {TYPE_1__ rxFilterConf; } ;
struct TYPE_6__ {TYPE_2__ devRead; } ;


 scalar_t__ VLAN_GROUP_ARRAY_LEN ;
 int VMXNET3_SET_VFTABLE_ENTRY (int *,scalar_t__) ;
 scalar_t__ vlan_group_get_device (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
vmxnet3_restore_vlan(struct vmxnet3_adapter *adapter)
{
 if (adapter->vlan_grp) {
  u16 vid;
  u32 *vfTable = adapter->shared->devRead.rxFilterConf.vfTable;
  bool activeVlan = 0;

  for (vid = 0; vid < VLAN_GROUP_ARRAY_LEN; vid++) {
   if (vlan_group_get_device(adapter->vlan_grp, vid)) {
    VMXNET3_SET_VFTABLE_ENTRY(vfTable, vid);
    activeVlan = 1;
   }
  }
  if (activeVlan) {

   VMXNET3_SET_VFTABLE_ENTRY(vfTable, 0);
  }
 }
}
