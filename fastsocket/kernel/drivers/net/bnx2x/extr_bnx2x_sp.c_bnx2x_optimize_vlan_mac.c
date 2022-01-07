
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x_exe_queue_obj {struct bnx2x_exeq_elem* (* get ) (struct bnx2x_exe_queue_obj*,struct bnx2x_exeq_elem*) ;} ;
struct bnx2x_vlan_mac_obj {int (* get_credit ) (struct bnx2x_vlan_mac_obj*) ;int (* put_credit ) (struct bnx2x_vlan_mac_obj*) ;struct bnx2x_exe_queue_obj exe_queue; } ;
union bnx2x_qable_obj {struct bnx2x_vlan_mac_obj vlan_mac; } ;
struct TYPE_3__ {int cmd; int vlan_mac_flags; } ;
struct TYPE_4__ {TYPE_1__ vlan_mac; } ;
struct bnx2x_exeq_elem {int link; TYPE_2__ cmd_data; } ;
struct bnx2x {int dummy; } ;
typedef int query ;


 int BNX2X_DONT_CONSUME_CAM_CREDIT ;
 int BNX2X_ERR (char*) ;
 int BNX2X_MSG_SP ;


 int DP (int ,char*,char*) ;
 int EINVAL ;
 int bnx2x_exe_queue_free_elem (struct bnx2x*,struct bnx2x_exeq_elem*) ;
 int list_del (int *) ;
 int memcpy (struct bnx2x_exeq_elem*,struct bnx2x_exeq_elem*,int) ;
 struct bnx2x_exeq_elem* stub1 (struct bnx2x_exe_queue_obj*,struct bnx2x_exeq_elem*) ;
 int stub2 (struct bnx2x_vlan_mac_obj*) ;
 int stub3 (struct bnx2x_vlan_mac_obj*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int bnx2x_optimize_vlan_mac(struct bnx2x *bp,
       union bnx2x_qable_obj *qo,
       struct bnx2x_exeq_elem *elem)
{
 struct bnx2x_exeq_elem query, *pos;
 struct bnx2x_vlan_mac_obj *o = &qo->vlan_mac;
 struct bnx2x_exe_queue_obj *exeq = &o->exe_queue;

 memcpy(&query, elem, sizeof(query));

 switch (elem->cmd_data.vlan_mac.cmd) {
 case 129:
  query.cmd_data.vlan_mac.cmd = 128;
  break;
 case 128:
  query.cmd_data.vlan_mac.cmd = 129;
  break;
 default:

  return 0;
 }


 pos = exeq->get(exeq, &query);
 if (pos) {


  if (!test_bit(BNX2X_DONT_CONSUME_CAM_CREDIT,
         &pos->cmd_data.vlan_mac.vlan_mac_flags)) {
   if ((query.cmd_data.vlan_mac.cmd ==
        129) && !o->put_credit(o)) {
    BNX2X_ERR("Failed to return the credit for the optimized ADD command\n");
    return -EINVAL;
   } else if (!o->get_credit(o)) {
    BNX2X_ERR("Failed to recover the credit from the optimized DEL command\n");
    return -EINVAL;
   }
  }

  DP(BNX2X_MSG_SP, "Optimizing %s command\n",
      (elem->cmd_data.vlan_mac.cmd == 129) ?
      "ADD" : "DEL");

  list_del(&pos->link);
  bnx2x_exe_queue_free_elem(bp, pos);
  return 1;
 }

 return 0;
}
