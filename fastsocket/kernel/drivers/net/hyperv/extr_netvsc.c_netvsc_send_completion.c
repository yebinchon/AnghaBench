
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vmpacket_descriptor {int offset8; scalar_t__ trans_id; } ;
struct TYPE_8__ {scalar_t__ msg_type; } ;
struct nvsp_message {TYPE_4__ hdr; } ;
struct netvsc_device {int start_remove; int wait_drain; scalar_t__ destroy; int num_outstanding_sends; int channel_init_wait; int channel_init_pkt; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int send_completion_ctx; int (* send_completion ) (int ) ;} ;
struct TYPE_6__ {TYPE_1__ send; } ;
struct hv_netvsc_packet {TYPE_2__ completion; } ;
struct hv_device {TYPE_3__* channel; } ;
struct TYPE_7__ {int outbound; } ;


 scalar_t__ NVSP_MSG1_TYPE_SEND_RECV_BUF_COMPLETE ;
 scalar_t__ NVSP_MSG1_TYPE_SEND_RNDIS_PKT_COMPLETE ;
 scalar_t__ NVSP_MSG1_TYPE_SEND_SEND_BUF_COMPLETE ;
 scalar_t__ NVSP_MSG_TYPE_INIT_COMPLETE ;
 scalar_t__ RING_AVAIL_PERCENT_HIWATER ;
 int atomic_dec_return (int *) ;
 int complete (int *) ;
 struct netvsc_device* get_inbound_net_device (struct hv_device*) ;
 scalar_t__ hv_ringbuf_avail_percent (int *) ;
 int memcpy (int *,struct nvsp_message*,int) ;
 int netdev_err (struct net_device*,char*,scalar_t__) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int stub1 (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void netvsc_send_completion(struct hv_device *device,
       struct vmpacket_descriptor *packet)
{
 struct netvsc_device *net_device;
 struct nvsp_message *nvsp_packet;
 struct hv_netvsc_packet *nvsc_packet;
 struct net_device *ndev;

 net_device = get_inbound_net_device(device);
 if (!net_device)
  return;
 ndev = net_device->ndev;

 nvsp_packet = (struct nvsp_message *)((unsigned long)packet +
   (packet->offset8 << 3));

 if ((nvsp_packet->hdr.msg_type == NVSP_MSG_TYPE_INIT_COMPLETE) ||
     (nvsp_packet->hdr.msg_type ==
      NVSP_MSG1_TYPE_SEND_RECV_BUF_COMPLETE) ||
     (nvsp_packet->hdr.msg_type ==
      NVSP_MSG1_TYPE_SEND_SEND_BUF_COMPLETE)) {

  memcpy(&net_device->channel_init_pkt, nvsp_packet,
         sizeof(struct nvsp_message));
  complete(&net_device->channel_init_wait);
 } else if (nvsp_packet->hdr.msg_type ==
     NVSP_MSG1_TYPE_SEND_RNDIS_PKT_COMPLETE) {
  int num_outstanding_sends;


  nvsc_packet = (struct hv_netvsc_packet *)(unsigned long)
   packet->trans_id;


  if (nvsc_packet)
   nvsc_packet->completion.send.send_completion(
    nvsc_packet->completion.send.
    send_completion_ctx);

  num_outstanding_sends =
   atomic_dec_return(&net_device->num_outstanding_sends);

  if (net_device->destroy && num_outstanding_sends == 0)
   wake_up(&net_device->wait_drain);

  if (netif_queue_stopped(ndev) && !net_device->start_remove &&
   (hv_ringbuf_avail_percent(&device->channel->outbound)
   > RING_AVAIL_PERCENT_HIWATER ||
   num_outstanding_sends < 1))
    netif_wake_queue(ndev);
 } else {
  netdev_err(ndev, "Unknown send completion packet type- "
      "%d received!!\n", nvsp_packet->hdr.msg_type);
 }

}
