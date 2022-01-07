
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cmd; } ;
struct bnx2x_vlan_mac_ramrod_params {TYPE_2__ user_req; int ramrod_flags; struct bnx2x_vlan_mac_obj* vlan_mac_obj; } ;
struct bnx2x_vlan_mac_obj {int exe_queue; } ;
struct TYPE_3__ {int vlan_mac; } ;
struct bnx2x_exeq_elem {int cmd_len; TYPE_1__ cmd_data; } ;
struct bnx2x {int dummy; } ;



 int ENOMEM ;
 int RAMROD_RESTORE ;
 int bnx2x_exe_queue_add (struct bnx2x*,int *,struct bnx2x_exeq_elem*,int) ;
 struct bnx2x_exeq_elem* bnx2x_exe_queue_alloc_elem (struct bnx2x*) ;
 int memcpy (int *,TYPE_2__*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int bnx2x_vlan_mac_push_new_cmd(
 struct bnx2x *bp,
 struct bnx2x_vlan_mac_ramrod_params *p)
{
 struct bnx2x_exeq_elem *elem;
 struct bnx2x_vlan_mac_obj *o = p->vlan_mac_obj;
 bool restore = test_bit(RAMROD_RESTORE, &p->ramrod_flags);


 elem = bnx2x_exe_queue_alloc_elem(bp);
 if (!elem)
  return -ENOMEM;


 switch (p->user_req.cmd) {
 case 128:
  elem->cmd_len = 2;
  break;
 default:
  elem->cmd_len = 1;
 }


 memcpy(&elem->cmd_data.vlan_mac, &p->user_req, sizeof(p->user_req));


 return bnx2x_exe_queue_add(bp, &o->exe_queue, elem, restore);
}
