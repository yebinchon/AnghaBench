
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x_exe_queue_obj {scalar_t__ (* get ) (struct bnx2x_exe_queue_obj*,struct bnx2x_exeq_elem*) ;} ;
struct bnx2x_vlan_mac_obj {int (* check_add ) (struct bnx2x*,struct bnx2x_vlan_mac_obj*,int *) ;scalar_t__ (* get_credit ) (struct bnx2x_vlan_mac_obj*) ;struct bnx2x_exe_queue_obj exe_queue; } ;
union bnx2x_qable_obj {struct bnx2x_vlan_mac_obj vlan_mac; } ;
struct TYPE_3__ {int vlan_mac_flags; int u; } ;
struct TYPE_4__ {TYPE_1__ vlan_mac; } ;
struct bnx2x_exeq_elem {TYPE_2__ cmd_data; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_DONT_CONSUME_CAM_CREDIT ;
 int BNX2X_MSG_SP ;
 int DP (int ,char*) ;
 int EEXIST ;
 int EINVAL ;
 int stub1 (struct bnx2x*,struct bnx2x_vlan_mac_obj*,int *) ;
 scalar_t__ stub2 (struct bnx2x_exe_queue_obj*,struct bnx2x_exeq_elem*) ;
 scalar_t__ stub3 (struct bnx2x_vlan_mac_obj*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int bnx2x_validate_vlan_mac_add(struct bnx2x *bp,
           union bnx2x_qable_obj *qo,
           struct bnx2x_exeq_elem *elem)
{
 struct bnx2x_vlan_mac_obj *o = &qo->vlan_mac;
 struct bnx2x_exe_queue_obj *exeq = &o->exe_queue;
 int rc;


 rc = o->check_add(bp, o, &elem->cmd_data.vlan_mac.u);
 if (rc) {
  DP(BNX2X_MSG_SP, "ADD command is not allowed considering current registry state.\n");
  return rc;
 }




 if (exeq->get(exeq, elem)) {
  DP(BNX2X_MSG_SP, "There is a pending ADD command already\n");
  return -EEXIST;
 }






 if (!(test_bit(BNX2X_DONT_CONSUME_CAM_CREDIT,
         &elem->cmd_data.vlan_mac.vlan_mac_flags) ||
     o->get_credit(o)))
  return -EINVAL;

 return 0;
}
