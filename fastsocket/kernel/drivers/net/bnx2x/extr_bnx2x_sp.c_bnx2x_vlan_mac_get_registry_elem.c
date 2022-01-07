
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x_vlan_mac_registry_elem {int vlan_mac_flags; int u; int cam_offset; } ;
struct bnx2x_vlan_mac_obj {struct bnx2x_vlan_mac_registry_elem* (* check_del ) (struct bnx2x*,struct bnx2x_vlan_mac_obj*,int *) ;int (* get_cam_offset ) (struct bnx2x_vlan_mac_obj*,int *) ;} ;
struct TYPE_3__ {int cmd; int u; int vlan_mac_flags; } ;
struct TYPE_4__ {TYPE_1__ vlan_mac; } ;
struct bnx2x_exeq_elem {TYPE_2__ cmd_data; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_vlan_mac_cmd { ____Placeholder_bnx2x_vlan_mac_cmd } bnx2x_vlan_mac_cmd ;


 int BNX2X_MSG_SP ;
 int BNX2X_VLAN_MAC_ADD ;
 int BNX2X_VLAN_MAC_MOVE ;
 int DP (int ,char*,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int WARN_ON (int) ;
 int kfree (struct bnx2x_vlan_mac_registry_elem*) ;
 struct bnx2x_vlan_mac_registry_elem* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int stub1 (struct bnx2x_vlan_mac_obj*,int *) ;
 struct bnx2x_vlan_mac_registry_elem* stub2 (struct bnx2x*,struct bnx2x_vlan_mac_obj*,int *) ;

__attribute__((used)) static inline int bnx2x_vlan_mac_get_registry_elem(
 struct bnx2x *bp,
 struct bnx2x_vlan_mac_obj *o,
 struct bnx2x_exeq_elem *elem,
 bool restore,
 struct bnx2x_vlan_mac_registry_elem **re)
{
 enum bnx2x_vlan_mac_cmd cmd = elem->cmd_data.vlan_mac.cmd;
 struct bnx2x_vlan_mac_registry_elem *reg_elem;


 if (!restore &&
     ((cmd == BNX2X_VLAN_MAC_ADD) || (cmd == BNX2X_VLAN_MAC_MOVE))) {
  reg_elem = kzalloc(sizeof(*reg_elem), GFP_ATOMIC);
  if (!reg_elem)
   return -ENOMEM;


  if (!o->get_cam_offset(o, &reg_elem->cam_offset)) {



   WARN_ON(1);
   kfree(reg_elem);
   return -EINVAL;
  }

  DP(BNX2X_MSG_SP, "Got cam offset %d\n", reg_elem->cam_offset);


  memcpy(&reg_elem->u, &elem->cmd_data.vlan_mac.u,
     sizeof(reg_elem->u));


  reg_elem->vlan_mac_flags =
   elem->cmd_data.vlan_mac.vlan_mac_flags;
 } else
  reg_elem = o->check_del(bp, o, &elem->cmd_data.vlan_mac.u);

 *re = reg_elem;
 return 0;
}
