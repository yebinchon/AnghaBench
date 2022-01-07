
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netlink_skb_parms {int dummy; } ;
struct TYPE_3__ {scalar_t__ operation; } ;
struct hv_vss_msg {int error; TYPE_1__ vss_hdr; } ;
struct cn_msg {scalar_t__ data; } ;
struct TYPE_4__ {int active; int * recv_channel; } ;


 scalar_t__ VSS_OP_REGISTER ;
 int hv_vss_onchannelcallback (int *) ;
 int pr_info (char*) ;
 int vss_respond_to_host (int ) ;
 TYPE_2__ vss_transaction ;

__attribute__((used)) static void
vss_cn_callback(struct cn_msg *msg, struct netlink_skb_parms *nsp)
{
 struct hv_vss_msg *vss_msg;

 vss_msg = (struct hv_vss_msg *)msg->data;

 if (vss_msg->vss_hdr.operation == VSS_OP_REGISTER) {
  pr_info("VSS daemon registered\n");
  vss_transaction.active = 0;
  if (vss_transaction.recv_channel != ((void*)0))
   hv_vss_onchannelcallback(vss_transaction.recv_channel);
  return;

 }
 vss_respond_to_host(vss_msg->error);
}
