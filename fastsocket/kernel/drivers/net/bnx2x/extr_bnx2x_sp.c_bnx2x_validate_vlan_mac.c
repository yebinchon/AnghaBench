
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union bnx2x_qable_obj {int dummy; } bnx2x_qable_obj ;
struct TYPE_3__ {int cmd; } ;
struct TYPE_4__ {TYPE_1__ vlan_mac; } ;
struct bnx2x_exeq_elem {TYPE_2__ cmd_data; } ;
struct bnx2x {int dummy; } ;





 int EINVAL ;
 int bnx2x_validate_vlan_mac_add (struct bnx2x*,union bnx2x_qable_obj*,struct bnx2x_exeq_elem*) ;
 int bnx2x_validate_vlan_mac_del (struct bnx2x*,union bnx2x_qable_obj*,struct bnx2x_exeq_elem*) ;
 int bnx2x_validate_vlan_mac_move (struct bnx2x*,union bnx2x_qable_obj*,struct bnx2x_exeq_elem*) ;

__attribute__((used)) static int bnx2x_validate_vlan_mac(struct bnx2x *bp,
       union bnx2x_qable_obj *qo,
       struct bnx2x_exeq_elem *elem)
{
 switch (elem->cmd_data.vlan_mac.cmd) {
 case 130:
  return bnx2x_validate_vlan_mac_add(bp, qo, elem);
 case 129:
  return bnx2x_validate_vlan_mac_del(bp, qo, elem);
 case 128:
  return bnx2x_validate_vlan_mac_move(bp, qo, elem);
 default:
  return -EINVAL;
 }
}
