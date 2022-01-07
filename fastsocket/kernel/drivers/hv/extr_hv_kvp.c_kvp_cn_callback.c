
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netlink_skb_parms {int dummy; } ;
struct TYPE_3__ {int * key; } ;
struct hv_kvp_msg_enumerate {TYPE_1__ data; } ;
struct TYPE_4__ {struct hv_kvp_msg_enumerate kvp_enum_data; } ;
struct hv_kvp_msg {int error; TYPE_2__ body; } ;
struct cn_msg {scalar_t__ data; } ;


 int HV_S_CONT ;


 scalar_t__ cancel_delayed_work_sync (int *) ;
 int dm_reg_value ;
 int in_hand_shake ;
 scalar_t__ kvp_handle_handshake (struct hv_kvp_msg*) ;
 int kvp_respond_to_host (struct hv_kvp_msg*,int) ;
 int kvp_work ;

__attribute__((used)) static void
kvp_cn_callback(struct cn_msg *msg, struct netlink_skb_parms *nsp)
{
 struct hv_kvp_msg *message;
 struct hv_kvp_msg_enumerate *data;
 int error = 0;

 message = (struct hv_kvp_msg *)msg->data;






 if (in_hand_shake) {
  if (kvp_handle_handshake(message))
   in_hand_shake = 0;
  return;
 }






 data = &message->body.kvp_enum_data;

 switch (dm_reg_value) {
 case 129:



  if (data->data.key[0] == 0)
   error = HV_S_CONT;
  break;

 case 128:




  error = message->error;
  break;
 }





 if (cancel_delayed_work_sync(&kvp_work))
  kvp_respond_to_host(message, error);
}
