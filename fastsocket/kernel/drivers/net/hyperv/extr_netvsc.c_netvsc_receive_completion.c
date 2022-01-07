
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct netvsc_device {int recv_pkt_list_lock; int recv_pkt_list; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int recv_completion_tid; } ;
struct TYPE_5__ {TYPE_1__ recv; } ;
struct hv_netvsc_packet {scalar_t__ status; int list_ent; TYPE_3__* xfer_page_pkt; TYPE_2__ completion; struct hv_device* device; } ;
struct hv_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ count; int list_ent; int status; } ;


 int NVSP_STAT_FAIL ;
 int NVSP_STAT_NONE ;
 scalar_t__ NVSP_STAT_SUCCESS ;
 struct netvsc_device* get_inbound_net_device (struct hv_device*) ;
 int list_add_tail (int *,int *) ;
 int netvsc_send_recv_completion (struct hv_device*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void netvsc_receive_completion(void *context)
{
 struct hv_netvsc_packet *packet = context;
 struct hv_device *device = packet->device;
 struct netvsc_device *net_device;
 u64 transaction_id = 0;
 bool fsend_receive_comp = 0;
 unsigned long flags;
 struct net_device *ndev;
 u32 status = NVSP_STAT_NONE;






 net_device = get_inbound_net_device(device);
 if (!net_device)
  return;
 ndev = net_device->ndev;


 spin_lock_irqsave(&net_device->recv_pkt_list_lock, flags);

 if (packet->status != NVSP_STAT_SUCCESS)
  packet->xfer_page_pkt->status = NVSP_STAT_FAIL;

 packet->xfer_page_pkt->count--;





 if (packet->xfer_page_pkt->count == 0) {
  fsend_receive_comp = 1;
  transaction_id = packet->completion.recv.recv_completion_tid;
  status = packet->xfer_page_pkt->status;
  list_add_tail(&packet->xfer_page_pkt->list_ent,
         &net_device->recv_pkt_list);

 }


 list_add_tail(&packet->list_ent, &net_device->recv_pkt_list);
 spin_unlock_irqrestore(&net_device->recv_pkt_list_lock, flags);


 if (fsend_receive_comp)
  netvsc_send_recv_completion(device, transaction_id, status);

}
