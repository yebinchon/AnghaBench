
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int operation; } ;
struct TYPE_5__ {char* version; } ;
struct TYPE_6__ {TYPE_1__ kvp_register; } ;
struct hv_kvp_msg {TYPE_4__ kvp_hdr; TYPE_2__ body; } ;
struct TYPE_7__ {int val; int idx; } ;
struct cn_msg {int len; TYPE_3__ id; scalar_t__ data; } ;


 int CN_KVP_IDX ;
 int CN_KVP_VAL ;
 int GFP_ATOMIC ;
 int HV_DRV_VERSION ;
 int cn_netlink_send (struct cn_msg*,int ,int ) ;
 int kfree (struct cn_msg*) ;
 struct cn_msg* kzalloc (int,int ) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static void
kvp_register(int reg_value)
{

 struct cn_msg *msg;
 struct hv_kvp_msg *kvp_msg;
 char *version;

 msg = kzalloc(sizeof(*msg) + sizeof(struct hv_kvp_msg), GFP_ATOMIC);

 if (msg) {
  kvp_msg = (struct hv_kvp_msg *)msg->data;
  version = kvp_msg->body.kvp_register.version;
  msg->id.idx = CN_KVP_IDX;
  msg->id.val = CN_KVP_VAL;

  kvp_msg->kvp_hdr.operation = reg_value;
  strcpy(version, HV_DRV_VERSION);
  msg->len = sizeof(struct hv_kvp_msg);
  cn_netlink_send(msg, 0, GFP_ATOMIC);
  kfree(msg);
 }
}
