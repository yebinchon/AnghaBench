
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vlan; } ;
struct TYPE_4__ {int mac; } ;
struct TYPE_6__ {TYPE_2__ vlan; TYPE_1__ mac; } ;
struct bnx2x_vlan_mac_data {TYPE_3__ u; int cmd; } ;
struct bnx2x_vfop_filter {int type; int vid; int mac; scalar_t__ add; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*) ;


 int BNX2X_VLAN_MAC_ADD ;
 int BNX2X_VLAN_MAC_DEL ;
 int ETH_ALEN ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int bnx2x_vfop_set_user_req(struct bnx2x *bp,
        struct bnx2x_vfop_filter *pos,
        struct bnx2x_vlan_mac_data *user_req)
{
 user_req->cmd = pos->add ? BNX2X_VLAN_MAC_ADD :
  BNX2X_VLAN_MAC_DEL;

 switch (pos->type) {
 case 129:
  memcpy(user_req->u.mac.mac, pos->mac, ETH_ALEN);
  break;
 case 128:
  user_req->u.vlan.vlan = pos->vid;
  break;
 default:
  BNX2X_ERR("Invalid filter type, skipping\n");
  return 1;
 }
 return 0;
}
