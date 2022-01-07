
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {int status; } ;
struct TYPE_7__ {TYPE_2__ send_rndis_pkt_complete; } ;
struct TYPE_8__ {TYPE_3__ v1_msg; } ;
struct TYPE_5__ {int msg_type; } ;
struct nvsp_message {TYPE_4__ msg; TYPE_1__ hdr; } ;
struct netvsc_device {struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct hv_device {int channel; } ;


 int EAGAIN ;
 int NVSP_MSG1_TYPE_SEND_RNDIS_PKT_COMPLETE ;
 int VM_PKT_COMP ;
 struct netvsc_device* hv_get_drvdata (struct hv_device*) ;
 int netdev_err (struct net_device*,char*,int ,...) ;
 int udelay (int) ;
 int vmbus_sendpacket (int ,struct nvsp_message*,int,int ,int ,int ) ;

__attribute__((used)) static void netvsc_send_recv_completion(struct hv_device *device,
     u64 transaction_id, u32 status)
{
 struct nvsp_message recvcompMessage;
 int retries = 0;
 int ret;
 struct net_device *ndev;
 struct netvsc_device *net_device = hv_get_drvdata(device);

 ndev = net_device->ndev;

 recvcompMessage.hdr.msg_type =
    NVSP_MSG1_TYPE_SEND_RNDIS_PKT_COMPLETE;

 recvcompMessage.msg.v1_msg.send_rndis_pkt_complete.status = status;

retry_send_cmplt:

 ret = vmbus_sendpacket(device->channel, &recvcompMessage,
          sizeof(struct nvsp_message), transaction_id,
          VM_PKT_COMP, 0);
 if (ret == 0) {


 } else if (ret == -EAGAIN) {

  retries++;
  netdev_err(ndev, "unable to send receive completion pkt"
   " (tid %llx)...retrying %d\n", transaction_id, retries);

  if (retries < 4) {
   udelay(100);
   goto retry_send_cmplt;
  } else {
   netdev_err(ndev, "unable to send receive "
    "completion pkt (tid %llx)...give up retrying\n",
    transaction_id);
  }
 } else {
  netdev_err(ndev, "unable to send receive "
   "completion pkt - %llx\n", transaction_id);
 }
}
