
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int u64 ;
typedef int u32 ;
struct vmbuspipe_hdr {int dummy; } ;
struct vmbus_channel {int * onchannel_callback; } ;
struct icmsg_hdr {int status; int icflags; } ;
struct hv_kvp_exchg_msg_value {char* key; int key_size; char* value; int value_size; int value_type; } ;
struct TYPE_10__ {struct hv_kvp_exchg_msg_value data; } ;
struct TYPE_9__ {struct hv_kvp_exchg_msg_value data; } ;
struct TYPE_11__ {TYPE_4__ kvp_enum_data; TYPE_3__ kvp_get; } ;
struct hv_kvp_msg {TYPE_5__ body; } ;
struct hv_kvp_ip_msg {int dummy; } ;
struct TYPE_12__ {int active; TYPE_2__* kvp_msg; int recv_req_id; struct vmbus_channel* recv_channel; int recv_len; } ;
struct TYPE_7__ {int operation; } ;
struct TYPE_8__ {TYPE_1__ kvp_hdr; } ;


 void* HV_E_FAIL ;
 int HV_KVP_EXCHANGE_MAX_KEY_SIZE ;
 int HV_KVP_EXCHANGE_MAX_VALUE_SIZE ;
 int ICMSGHDRFLAG_RESPONSE ;
 int ICMSGHDRFLAG_TRANSACTION ;





 int REG_SZ ;
 int UTF16_HOST_ENDIAN ;
 int VM_PKT_DATA_INBAND ;
 TYPE_6__ kvp_transaction ;
 int pr_warn (char*) ;
 int process_ob_ipinfo (struct hv_kvp_msg*,struct hv_kvp_ip_msg*,int const) ;
 int * recv_buffer ;
 int strlen (char*) ;
 int utf8s_to_utf16s (char*,int ,int ,int *,int) ;
 int vmbus_sendpacket (struct vmbus_channel*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static void
kvp_respond_to_host(struct hv_kvp_msg *msg_to_host, int error)
{
 struct hv_kvp_msg *kvp_msg;
 struct hv_kvp_exchg_msg_value *kvp_data;
 char *key_name;
 char *value;
 struct icmsg_hdr *icmsghdrp;
 int keylen = 0;
 int valuelen = 0;
 u32 buf_len;
 struct vmbus_channel *channel;
 u64 req_id;
 int ret;





 if (!kvp_transaction.active) {



  pr_warn("KVP: Transaction not active\n");
  return;
 }





 buf_len = kvp_transaction.recv_len;
 channel = kvp_transaction.recv_channel;
 req_id = kvp_transaction.recv_req_id;

 kvp_transaction.active = 0;

 icmsghdrp = (struct icmsg_hdr *)
   &recv_buffer[sizeof(struct vmbuspipe_hdr)];

 if (channel->onchannel_callback == ((void*)0))




  return;

 icmsghdrp->status = error;





 if (error) {




  goto response_done;
 }

 kvp_msg = (struct hv_kvp_msg *)
   &recv_buffer[sizeof(struct vmbuspipe_hdr) +
   sizeof(struct icmsg_hdr)];

 switch (kvp_transaction.kvp_msg->kvp_hdr.operation) {
 case 130:
  ret = process_ob_ipinfo(msg_to_host,
     (struct hv_kvp_ip_msg *)kvp_msg,
     130);
  if (ret < 0)
   icmsghdrp->status = HV_E_FAIL;

  goto response_done;
 case 128:
  goto response_done;
 case 131:
  kvp_data = &kvp_msg->body.kvp_get.data;
  goto copy_value;

 case 129:
 case 132:
  goto response_done;

 default:
  break;
 }

 kvp_data = &kvp_msg->body.kvp_enum_data.data;
 key_name = msg_to_host->body.kvp_enum_data.data.key;







 keylen = utf8s_to_utf16s(key_name, strlen(key_name), UTF16_HOST_ENDIAN,
    (wchar_t *) kvp_data->key,
    (HV_KVP_EXCHANGE_MAX_KEY_SIZE / 2) - 2);
 kvp_data->key_size = 2*(keylen + 1);

copy_value:
 value = msg_to_host->body.kvp_enum_data.data.value;
 valuelen = utf8s_to_utf16s(value, strlen(value), UTF16_HOST_ENDIAN,
    (wchar_t *) kvp_data->value,
    (HV_KVP_EXCHANGE_MAX_VALUE_SIZE / 2) - 2);
 kvp_data->value_size = 2*(valuelen + 1);





 if ((keylen < 0) || (valuelen < 0))
  icmsghdrp->status = HV_E_FAIL;

 kvp_data->value_type = REG_SZ;

response_done:
 icmsghdrp->icflags = ICMSGHDRFLAG_TRANSACTION | ICMSGHDRFLAG_RESPONSE;

 vmbus_sendpacket(channel, recv_buffer, buf_len, req_id,
    VM_PKT_DATA_INBAND, 0);

}
