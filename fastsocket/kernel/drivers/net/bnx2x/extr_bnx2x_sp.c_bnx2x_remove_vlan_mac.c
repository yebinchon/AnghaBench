
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int (* put_credit ) (TYPE_3__*) ;int (* get_credit ) (TYPE_3__*) ;} ;
union bnx2x_qable_obj {TYPE_3__ vlan_mac; } ;
struct TYPE_5__ {int cmd; int vlan_mac_flags; } ;
struct TYPE_6__ {TYPE_1__ vlan_mac; } ;
struct bnx2x_exeq_elem {TYPE_2__ cmd_data; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_DONT_CONSUME_CAM_CREDIT ;



 int EINVAL ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bnx2x_remove_vlan_mac(struct bnx2x *bp,
      union bnx2x_qable_obj *qo,
      struct bnx2x_exeq_elem *elem)
{
 int rc = 0;


 if (test_bit(BNX2X_DONT_CONSUME_CAM_CREDIT,
       &elem->cmd_data.vlan_mac.vlan_mac_flags))
  return 0;

 switch (elem->cmd_data.vlan_mac.cmd) {
 case 130:
 case 128:
  rc = qo->vlan_mac.put_credit(&qo->vlan_mac);
  break;
 case 129:
  rc = qo->vlan_mac.get_credit(&qo->vlan_mac);
  break;
 default:
  return -EINVAL;
 }

 if (rc != 1)
  return -EINVAL;

 return 0;
}
