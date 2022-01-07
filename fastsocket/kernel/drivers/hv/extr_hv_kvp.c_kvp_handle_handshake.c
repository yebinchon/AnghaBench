
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int operation; } ;
struct hv_kvp_msg {TYPE_1__ kvp_hdr; } ;
struct TYPE_4__ {int active; scalar_t__ kvp_context; } ;




 int dm_reg_value ;
 int hv_kvp_onchannelcallback (scalar_t__) ;
 int kvp_register (int) ;
 TYPE_2__ kvp_transaction ;
 int pr_info (char*,...) ;

__attribute__((used)) static int kvp_handle_handshake(struct hv_kvp_msg *msg)
{
 int ret = 1;

 switch (msg->kvp_hdr.operation) {
 case 129:
  dm_reg_value = 129;
  pr_info("KVP: IP injection functionality not available\n");
  pr_info("KVP: Upgrade the KVP daemon\n");
  break;
 case 128:
  dm_reg_value = 128;
  break;
 default:
  pr_info("KVP: incompatible daemon\n");
  pr_info("KVP: KVP version: %d, Daemon version: %d\n",
   128, msg->kvp_hdr.operation);
  ret = 0;
 }

 if (ret) {



  pr_info("KVP: user-mode registering done.\n");
  kvp_register(dm_reg_value);
  kvp_transaction.active = 0;
  if (kvp_transaction.kvp_context)
   hv_kvp_onchannelcallback(kvp_transaction.kvp_context);
 }
 return ret;
}
