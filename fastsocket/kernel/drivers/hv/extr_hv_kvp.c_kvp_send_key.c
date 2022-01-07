
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wchar_t ;
struct work_struct {int dummy; } ;
struct TYPE_14__ {int index; } ;
struct TYPE_13__ {scalar_t__ key; int key_size; } ;
struct TYPE_11__ {int value_u32; int value_u64; scalar_t__ key; int key_size; scalar_t__ value; int value_size; int value_type; } ;
struct TYPE_12__ {TYPE_3__ data; } ;
struct TYPE_15__ {TYPE_6__ kvp_enum_data; TYPE_5__ kvp_delete; TYPE_4__ kvp_set; } ;
struct TYPE_10__ {int operation; void* pool; } ;
struct hv_kvp_msg {TYPE_7__ body; TYPE_2__ kvp_hdr; } ;
struct TYPE_9__ {int val; int idx; } ;
struct cn_msg {int len; scalar_t__ data; TYPE_1__ id; } ;
typedef void* __u8 ;
typedef int __u64 ;
typedef int __u32 ;
struct TYPE_16__ {struct hv_kvp_msg* kvp_msg; } ;


 int CN_KVP_IDX ;
 int CN_KVP_VAL ;
 int GFP_ATOMIC ;
 int HV_KVP_EXCHANGE_MAX_KEY_SIZE ;
 int HV_KVP_EXCHANGE_MAX_VALUE_SIZE ;
 int UTF16_LITTLE_ENDIAN ;
 int cn_netlink_send (struct cn_msg*,int ,int ) ;
 int kfree (struct cn_msg*) ;
 TYPE_8__ kvp_transaction ;
 struct cn_msg* kzalloc (int,int ) ;
 int process_ib_ipinfo (struct hv_kvp_msg*,struct hv_kvp_msg*,int const) ;
 int sprintf (scalar_t__,char*,int) ;
 int utf16s_to_utf8s (int *,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void
kvp_send_key(struct work_struct *dummy)
{
 struct cn_msg *msg;
 struct hv_kvp_msg *message;
 struct hv_kvp_msg *in_msg;
 __u8 operation = kvp_transaction.kvp_msg->kvp_hdr.operation;
 __u8 pool = kvp_transaction.kvp_msg->kvp_hdr.pool;
 __u32 val32;
 __u64 val64;

 msg = kzalloc(sizeof(*msg) + sizeof(struct hv_kvp_msg) , GFP_ATOMIC);
 if (!msg)
  return;

 msg->id.idx = CN_KVP_IDX;
 msg->id.val = CN_KVP_VAL;

 message = (struct hv_kvp_msg *)msg->data;
 message->kvp_hdr.operation = operation;
 message->kvp_hdr.pool = pool;
 in_msg = kvp_transaction.kvp_msg;
 switch (message->kvp_hdr.operation) {
 case 131:
  process_ib_ipinfo(in_msg, message, 131);
  break;
 case 133:
  process_ib_ipinfo(in_msg, message, 133);
  break;
 case 132:
  switch (in_msg->body.kvp_set.data.value_type) {
  case 130:



   message->body.kvp_set.data.value_size =
    utf16s_to_utf8s(
    (wchar_t *)in_msg->body.kvp_set.data.value,
    in_msg->body.kvp_set.data.value_size,
    UTF16_LITTLE_ENDIAN,
    message->body.kvp_set.data.value,
    HV_KVP_EXCHANGE_MAX_VALUE_SIZE - 1) + 1;
    break;

  case 129:




   val32 = in_msg->body.kvp_set.data.value_u32;
   message->body.kvp_set.data.value_size =
    sprintf(message->body.kvp_set.data.value,
     "%d", val32) + 1;
   break;

  case 128:




   val64 = in_msg->body.kvp_set.data.value_u64;
   message->body.kvp_set.data.value_size =
    sprintf(message->body.kvp_set.data.value,
     "%llu", val64) + 1;
   break;

  }
 case 134:
  message->body.kvp_set.data.key_size =
   utf16s_to_utf8s(
   (wchar_t *)in_msg->body.kvp_set.data.key,
   in_msg->body.kvp_set.data.key_size,
   UTF16_LITTLE_ENDIAN,
   message->body.kvp_set.data.key,
   HV_KVP_EXCHANGE_MAX_KEY_SIZE - 1) + 1;
   break;

 case 136:
  message->body.kvp_delete.key_size =
   utf16s_to_utf8s(
   (wchar_t *)in_msg->body.kvp_delete.key,
   in_msg->body.kvp_delete.key_size,
   UTF16_LITTLE_ENDIAN,
   message->body.kvp_delete.key,
   HV_KVP_EXCHANGE_MAX_KEY_SIZE - 1) + 1;
   break;

 case 135:
  message->body.kvp_enum_data.index =
   in_msg->body.kvp_enum_data.index;
   break;
 }

 msg->len = sizeof(struct hv_kvp_msg);
 cn_netlink_send(msg, 0, GFP_ATOMIC);
 kfree(msg);

 return;
}
