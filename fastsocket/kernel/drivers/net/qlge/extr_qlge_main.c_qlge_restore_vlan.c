
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ql_adapter {int ndev; scalar_t__ vlgrp; } ;


 scalar_t__ VLAN_GROUP_ARRAY_LEN ;
 int qlge_vlan_rx_add_vid (int ,scalar_t__) ;
 int qlge_vlan_rx_register (int ,scalar_t__) ;
 int vlan_group_get_device (scalar_t__,scalar_t__) ;

__attribute__((used)) static void qlge_restore_vlan(struct ql_adapter *qdev)
{
 qlge_vlan_rx_register(qdev->ndev, qdev->vlgrp);

 if (qdev->vlgrp) {
  u16 vid;
   for (vid = 0; vid < VLAN_GROUP_ARRAY_LEN; vid++) {
    if (!vlan_group_get_device(qdev->vlgrp, vid))
     continue;
    qlge_vlan_rx_add_vid(qdev->ndev, vid);
   }
 }
}
