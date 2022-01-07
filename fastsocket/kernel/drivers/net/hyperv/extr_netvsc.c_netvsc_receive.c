
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct xferpage_packet {int count; void* status; int list_ent; } ;
struct TYPE_11__ {int trans_id; } ;
struct vmtransfer_page_packet_header {scalar_t__ xfer_pageset_id; int range_cnt; TYPE_3__* ranges; TYPE_2__ d; } ;
struct vmpacket_descriptor {int offset8; int type; } ;
struct TYPE_10__ {scalar_t__ msg_type; } ;
struct nvsp_message {TYPE_1__ hdr; } ;
struct TYPE_15__ {scalar_t__ next; } ;
struct netvsc_device {scalar_t__ recv_buf; int recv_pkt_list_lock; TYPE_6__ recv_pkt_list; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct TYPE_13__ {struct hv_netvsc_packet* recv_completion_ctx; int recv_completion_tid; int (* recv_completion ) (struct hv_netvsc_packet*) ;} ;
struct TYPE_14__ {TYPE_4__ recv; } ;
struct hv_netvsc_packet {TYPE_5__ completion; int total_data_buflen; void* data; struct hv_device* device; struct xferpage_packet* xfer_page_pkt; void* status; int list_ent; } ;
struct hv_device {int dummy; } ;
struct TYPE_12__ {int byte_count; scalar_t__ byte_offset; } ;


 int LIST_HEAD (TYPE_6__) ;
 scalar_t__ NETVSC_RECEIVE_BUFFER_ID ;
 scalar_t__ NVSP_MSG1_TYPE_SEND_RNDIS_PKT ;
 int NVSP_STAT_FAIL ;
 void* NVSP_STAT_SUCCESS ;
 int VM_PKT_DATA_USING_XFER_PAGES ;
 struct netvsc_device* get_inbound_net_device (struct hv_device*) ;
 TYPE_6__ listHead ;
 int list_del (int *) ;
 int list_empty (TYPE_6__*) ;
 int list_move_tail (scalar_t__,TYPE_6__*) ;
 int netdev_err (struct net_device*,char*,int,...) ;
 int netvsc_receive_completion (struct hv_netvsc_packet*) ;
 int netvsc_send_recv_completion (struct hv_device*,int ,int ) ;
 int rndis_filter_receive (struct hv_device*,struct hv_netvsc_packet*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void netvsc_receive(struct hv_device *device,
       struct vmpacket_descriptor *packet)
{
 struct netvsc_device *net_device;
 struct vmtransfer_page_packet_header *vmxferpage_packet;
 struct nvsp_message *nvsp_packet;
 struct hv_netvsc_packet *netvsc_packet = ((void*)0);

 struct xferpage_packet *xferpage_packet = ((void*)0);
 int i;
 int count = 0;
 unsigned long flags;
 struct net_device *ndev;

 LIST_HEAD(listHead);

 net_device = get_inbound_net_device(device);
 if (!net_device)
  return;
 ndev = net_device->ndev;





 if (packet->type != VM_PKT_DATA_USING_XFER_PAGES) {
  netdev_err(ndev, "Unknown packet type received - %d\n",
      packet->type);
  return;
 }

 nvsp_packet = (struct nvsp_message *)((unsigned long)packet +
   (packet->offset8 << 3));


 if (nvsp_packet->hdr.msg_type !=
     NVSP_MSG1_TYPE_SEND_RNDIS_PKT) {
  netdev_err(ndev, "Unknown nvsp packet type received-"
   " %d\n", nvsp_packet->hdr.msg_type);
  return;
 }

 vmxferpage_packet = (struct vmtransfer_page_packet_header *)packet;

 if (vmxferpage_packet->xfer_pageset_id != NETVSC_RECEIVE_BUFFER_ID) {
  netdev_err(ndev, "Invalid xfer page set id - "
      "expecting %x got %x\n", NETVSC_RECEIVE_BUFFER_ID,
      vmxferpage_packet->xfer_pageset_id);
  return;
 }







 spin_lock_irqsave(&net_device->recv_pkt_list_lock, flags);
 while (!list_empty(&net_device->recv_pkt_list)) {
  list_move_tail(net_device->recv_pkt_list.next, &listHead);
  if (++count == vmxferpage_packet->range_cnt + 1)
   break;
 }
 spin_unlock_irqrestore(&net_device->recv_pkt_list_lock, flags);






 if (count < 2) {
  netdev_err(ndev, "Got only %d netvsc pkt...needed "
   "%d pkts. Dropping this xfer page packet completely!\n",
   count, vmxferpage_packet->range_cnt + 1);


  spin_lock_irqsave(&net_device->recv_pkt_list_lock, flags);
  for (i = count; i != 0; i--) {
   list_move_tail(listHead.next,
           &net_device->recv_pkt_list);
  }
  spin_unlock_irqrestore(&net_device->recv_pkt_list_lock,
           flags);

  netvsc_send_recv_completion(device,
         vmxferpage_packet->d.trans_id,
         NVSP_STAT_FAIL);

  return;
 }


 xferpage_packet = (struct xferpage_packet *)listHead.next;
 list_del(&xferpage_packet->list_ent);
 xferpage_packet->status = NVSP_STAT_SUCCESS;


 xferpage_packet->count = count - 1;

 if (xferpage_packet->count != vmxferpage_packet->range_cnt) {
  netdev_err(ndev, "Needed %d netvsc pkts to satisfy "
   "this xfer page...got %d\n",
   vmxferpage_packet->range_cnt, xferpage_packet->count);
 }


 for (i = 0; i < (count - 1); i++) {
  netvsc_packet = (struct hv_netvsc_packet *)listHead.next;
  list_del(&netvsc_packet->list_ent);


  netvsc_packet->status = NVSP_STAT_SUCCESS;
  netvsc_packet->xfer_page_pkt = xferpage_packet;
  netvsc_packet->completion.recv.recv_completion =
     netvsc_receive_completion;
  netvsc_packet->completion.recv.recv_completion_ctx =
     netvsc_packet;
  netvsc_packet->device = device;

  netvsc_packet->completion.recv.recv_completion_tid =
     vmxferpage_packet->d.trans_id;

  netvsc_packet->data = (void *)((unsigned long)net_device->
   recv_buf + vmxferpage_packet->ranges[i].byte_offset);
  netvsc_packet->total_data_buflen =
     vmxferpage_packet->ranges[i].byte_count;


  rndis_filter_receive(device, netvsc_packet);

  netvsc_receive_completion(netvsc_packet->
    completion.recv.recv_completion_ctx);
 }

}
