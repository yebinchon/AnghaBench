
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct vmbuspipe_hdr {int dummy; } ;
struct vmbus_channel {int dummy; } ;
struct icmsg_negotiate {int dummy; } ;
struct icmsg_hdr {scalar_t__ icmsgtype; int icflags; } ;
struct heartbeat_msg_data {int seq_num; } ;
struct TYPE_2__ {int * recv_buffer; } ;


 int ICMSGHDRFLAG_RESPONSE ;
 int ICMSGHDRFLAG_TRANSACTION ;
 scalar_t__ ICMSGTYPE_NEGOTIATE ;
 int PAGE_SIZE ;
 int VM_PKT_DATA_INBAND ;
 int hb_srv_version ;
 int util_fw_version ;
 TYPE_1__ util_heartbeat ;
 int vmbus_prep_negotiate_resp (struct icmsg_hdr*,struct icmsg_negotiate*,int *,int ,int ) ;
 int vmbus_recvpacket (struct vmbus_channel*,int *,int ,scalar_t__*,int *) ;
 int vmbus_sendpacket (struct vmbus_channel*,int *,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void heartbeat_onchannelcallback(void *context)
{
 struct vmbus_channel *channel = context;
 u32 recvlen;
 u64 requestid;
 struct icmsg_hdr *icmsghdrp;
 struct heartbeat_msg_data *heartbeat_msg;
 u8 *hbeat_txf_buf = util_heartbeat.recv_buffer;
 struct icmsg_negotiate *negop = ((void*)0);

 vmbus_recvpacket(channel, hbeat_txf_buf,
    PAGE_SIZE, &recvlen, &requestid);

 if (recvlen > 0) {
  icmsghdrp = (struct icmsg_hdr *)&hbeat_txf_buf[
    sizeof(struct vmbuspipe_hdr)];

  if (icmsghdrp->icmsgtype == ICMSGTYPE_NEGOTIATE) {
   vmbus_prep_negotiate_resp(icmsghdrp, negop,
    hbeat_txf_buf, util_fw_version,
    hb_srv_version);
  } else {
   heartbeat_msg =
    (struct heartbeat_msg_data *)&hbeat_txf_buf[
     sizeof(struct vmbuspipe_hdr) +
     sizeof(struct icmsg_hdr)];

   heartbeat_msg->seq_num += 1;
  }

  icmsghdrp->icflags = ICMSGHDRFLAG_TRANSACTION
   | ICMSGHDRFLAG_RESPONSE;

  vmbus_sendpacket(channel, hbeat_txf_buf,
           recvlen, requestid,
           VM_PKT_DATA_INBAND, 0);
 }
}
