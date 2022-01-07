
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ length; int error; int generation; scalar_t__ sendb; } ;
struct pending_request {TYPE_1__ req; int list; struct hpsb_packet* packet; } ;
struct hpsb_packet {int generation; } ;
struct file_info {int reqlists_lock; int req_pending; int host; } ;
typedef int quadlet_t ;


 int DBGMSG (char*,int) ;
 int ENOMEM ;
 int RAW1394_ERROR_SEND_ERROR ;
 int be32_to_cpu (int ) ;
 struct hpsb_packet* hpsb_make_phypacket (int ,int) ;
 int hpsb_send_packet (struct hpsb_packet*) ;
 int hpsb_set_packet_complete_task (struct hpsb_packet*,void (*) (void*),struct pending_request*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ queue_complete_cb ;
 int queue_complete_req (struct pending_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int write_phypacket(struct file_info *fi, struct pending_request *req)
{
 struct hpsb_packet *packet = ((void*)0);
 int retval = 0;
 quadlet_t data;
 unsigned long flags;

 data = be32_to_cpu((u32) req->req.sendb);
 DBGMSG("write_phypacket called - quadlet 0x%8.8x ", data);
 packet = hpsb_make_phypacket(fi->host, data);
 if (!packet)
  return -ENOMEM;
 req->req.length = 0;
 req->packet = packet;
 hpsb_set_packet_complete_task(packet,
          (void (*)(void *))queue_complete_cb, req);
 spin_lock_irqsave(&fi->reqlists_lock, flags);
 list_add_tail(&req->list, &fi->req_pending);
 spin_unlock_irqrestore(&fi->reqlists_lock, flags);
 packet->generation = req->req.generation;
 retval = hpsb_send_packet(packet);
 DBGMSG("write_phypacket send_packet called => retval: %d ", retval);
 if (retval < 0) {
  req->req.error = RAW1394_ERROR_SEND_ERROR;
  req->req.length = 0;
  queue_complete_req(req);
 }
 return 0;
}
