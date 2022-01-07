
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_7__ {int operation; } ;
struct hv_vss_msg {TYPE_2__ vss_hdr; } ;
struct TYPE_6__ {int val; int idx; } ;
struct cn_msg {int len; TYPE_1__ id; scalar_t__ data; } ;
struct TYPE_10__ {TYPE_4__* msg; } ;
struct TYPE_8__ {int operation; } ;
struct TYPE_9__ {TYPE_3__ vss_hdr; } ;


 int CN_VSS_IDX ;
 int CN_VSS_VAL ;
 int GFP_ATOMIC ;
 int cn_netlink_send (struct cn_msg*,int ,int ) ;
 int kfree (struct cn_msg*) ;
 struct cn_msg* kzalloc (int,int ) ;
 TYPE_5__ vss_transaction ;

__attribute__((used)) static void vss_send_op(struct work_struct *dummy)
{
 int op = vss_transaction.msg->vss_hdr.operation;
 struct cn_msg *msg;
 struct hv_vss_msg *vss_msg;

 msg = kzalloc(sizeof(*msg) + sizeof(*vss_msg), GFP_ATOMIC);
 if (!msg)
  return;

 vss_msg = (struct hv_vss_msg *)msg->data;

 msg->id.idx = CN_VSS_IDX;
 msg->id.val = CN_VSS_VAL;

 vss_msg->vss_hdr.operation = op;
 msg->len = sizeof(struct hv_vss_msg);

 cn_netlink_send(msg, 0, GFP_ATOMIC);
 kfree(msg);

 return;
}
