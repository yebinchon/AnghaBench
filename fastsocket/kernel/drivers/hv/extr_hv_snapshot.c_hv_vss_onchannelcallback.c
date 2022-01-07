
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct vmbuspipe_hdr {int dummy; } ;
struct vmbus_channel {int dummy; } ;
struct icmsg_negotiate {int dummy; } ;
struct icmsg_hdr {scalar_t__ icmsgtype; int icflags; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int operation; } ;
struct hv_vss_msg {TYPE_3__ dm_info; TYPE_2__ vss_cf; TYPE_1__ vss_hdr; } ;
struct TYPE_8__ {int active; struct hv_vss_msg* msg; int recv_req_id; struct vmbus_channel* recv_channel; scalar_t__ recv_len; } ;


 int ICMSGHDRFLAG_RESPONSE ;
 int ICMSGHDRFLAG_TRANSACTION ;
 scalar_t__ ICMSGTYPE_NEGOTIATE ;
 int PAGE_SIZE ;
 int UTIL_FW_VERSION ;
 int VM_PKT_DATA_INBAND ;
 int VSS_HBU_NO_AUTO_RECOVERY ;




 int VSS_VERSION ;
 int * recv_buffer ;
 int schedule_work (int *) ;
 int vmbus_prep_negotiate_resp (struct icmsg_hdr*,struct icmsg_negotiate*,int *,int ,int ) ;
 int vmbus_recvpacket (struct vmbus_channel*,int *,int,scalar_t__*,int *) ;
 int vmbus_sendpacket (struct vmbus_channel*,int *,scalar_t__,int ,int ,int ) ;
 int vss_respond_to_host (int ) ;
 int vss_send_op_work ;
 TYPE_4__ vss_transaction ;

void hv_vss_onchannelcallback(void *context)
{
 struct vmbus_channel *channel = context;
 u32 recvlen;
 u64 requestid;
 struct hv_vss_msg *vss_msg;


 struct icmsg_hdr *icmsghdrp;
 struct icmsg_negotiate *negop = ((void*)0);

 if (vss_transaction.active) {




  vss_transaction.recv_channel = channel;
  return;
 }

 vmbus_recvpacket(channel, recv_buffer, PAGE_SIZE * 2, &recvlen,
    &requestid);

 if (recvlen > 0) {
  icmsghdrp = (struct icmsg_hdr *)&recv_buffer[
   sizeof(struct vmbuspipe_hdr)];

  if (icmsghdrp->icmsgtype == ICMSGTYPE_NEGOTIATE) {
   vmbus_prep_negotiate_resp(icmsghdrp, negop,
     recv_buffer, UTIL_FW_VERSION,
     VSS_VERSION);
  } else {
   vss_msg = (struct hv_vss_msg *)&recv_buffer[
    sizeof(struct vmbuspipe_hdr) +
    sizeof(struct icmsg_hdr)];






   vss_transaction.recv_len = recvlen;
   vss_transaction.recv_channel = channel;
   vss_transaction.recv_req_id = requestid;
   vss_transaction.active = 1;
   vss_transaction.msg = (struct hv_vss_msg *)vss_msg;

   switch (vss_msg->vss_hdr.operation) {
   case 131:
   case 128:
    schedule_work(&vss_send_op_work);
    return;

   case 129:
    vss_msg->vss_cf.flags =
      VSS_HBU_NO_AUTO_RECOVERY;
    vss_respond_to_host(0);
    return;

   case 130:
    vss_msg->dm_info.flags = 0;
    vss_respond_to_host(0);
    return;

   default:
    vss_respond_to_host(0);
    return;

   }

  }

  icmsghdrp->icflags = ICMSGHDRFLAG_TRANSACTION
   | ICMSGHDRFLAG_RESPONSE;

  vmbus_sendpacket(channel, recv_buffer,
           recvlen, requestid,
           VM_PKT_DATA_INBAND, 0);
 }

}
