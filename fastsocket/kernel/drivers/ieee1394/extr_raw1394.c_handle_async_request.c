
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int address; int type; int length; int misc; void* error; int generation; int sendb; } ;
struct pending_request {TYPE_1__ req; int list; struct hpsb_packet* packet; int * data; } ;
struct hpsb_packet {int generation; int * data; int * header; } ;
struct file_info {int reqlists_lock; int req_pending; int host; } ;


 int DBGMSG (char*) ;
 int ENOMEM ;
 int EXTCODE_FETCH_ADD ;
 int EXTCODE_LITTLE_ADD ;
 void* RAW1394_ERROR_INVALID_ARG ;
 void* RAW1394_ERROR_MEMFAULT ;
 void* RAW1394_ERROR_SEND_ERROR ;
 void* RAW1394_ERROR_STATE_ORDER ;





 int copy_from_user (int *,int ,int) ;
 int hpsb_free_tlabel (struct hpsb_packet*) ;
 struct hpsb_packet* hpsb_make_lock64packet (int ,int,int,int,int *,int ) ;
 struct hpsb_packet* hpsb_make_lockpacket (int ,int,int,int,int *,int ) ;
 struct hpsb_packet* hpsb_make_readpacket (int ,int,int,int) ;
 struct hpsb_packet* hpsb_make_streampacket (int ,int *,int,int,int,int) ;
 struct hpsb_packet* hpsb_make_writepacket (int ,int,int,int *,int) ;
 scalar_t__ hpsb_send_packet (struct hpsb_packet*) ;
 int hpsb_set_packet_complete_task (struct hpsb_packet*,void (*) (void*),struct pending_request*) ;
 int int2ptr (int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ queue_complete_cb ;
 int queue_complete_req (struct pending_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int handle_async_request(struct file_info *fi,
    struct pending_request *req, int node)
{
 unsigned long flags;
 struct hpsb_packet *packet = ((void*)0);
 u64 addr = req->req.address & 0xffffffffffffULL;

 switch (req->req.type) {
 case 132:
  DBGMSG("read_request called");
  packet =
      hpsb_make_readpacket(fi->host, node, addr, req->req.length);

  if (!packet)
   return -ENOMEM;

  if (req->req.length == 4)
   req->data = &packet->header[3];
  else
   req->data = packet->data;

  break;

 case 130:
  DBGMSG("write_request called");

  packet = hpsb_make_writepacket(fi->host, node, addr, ((void*)0),
            req->req.length);
  if (!packet)
   return -ENOMEM;

  if (req->req.length == 4) {
   if (copy_from_user
       (&packet->header[3], int2ptr(req->req.sendb),
        req->req.length))
    req->req.error = RAW1394_ERROR_MEMFAULT;
  } else {
   if (copy_from_user
       (packet->data, int2ptr(req->req.sendb),
        req->req.length))
    req->req.error = RAW1394_ERROR_MEMFAULT;
  }

  req->req.length = 0;
  break;

 case 131:
  DBGMSG("stream_request called");

  packet =
      hpsb_make_streampacket(fi->host, ((void*)0), req->req.length,
        node & 0x3f ,
        (req->req.misc >> 16) & 0x3,
        req->req.misc & 0xf);
  if (!packet)
   return -ENOMEM;

  if (copy_from_user(packet->data, int2ptr(req->req.sendb),
       req->req.length))
   req->req.error = RAW1394_ERROR_MEMFAULT;

  req->req.length = 0;
  break;

 case 129:
  DBGMSG("lock_request called");
  if ((req->req.misc == EXTCODE_FETCH_ADD)
      || (req->req.misc == EXTCODE_LITTLE_ADD)) {
   if (req->req.length != 4) {
    req->req.error = RAW1394_ERROR_INVALID_ARG;
    break;
   }
  } else {
   if (req->req.length != 8) {
    req->req.error = RAW1394_ERROR_INVALID_ARG;
    break;
   }
  }

  packet = hpsb_make_lockpacket(fi->host, node, addr,
           req->req.misc, ((void*)0), 0);
  if (!packet)
   return -ENOMEM;

  if (copy_from_user(packet->data, int2ptr(req->req.sendb),
       req->req.length)) {
   req->req.error = RAW1394_ERROR_MEMFAULT;
   break;
  }

  req->data = packet->data;
  req->req.length = 4;
  break;

 case 128:
  DBGMSG("lock64_request called");
  if ((req->req.misc == EXTCODE_FETCH_ADD)
      || (req->req.misc == EXTCODE_LITTLE_ADD)) {
   if (req->req.length != 8) {
    req->req.error = RAW1394_ERROR_INVALID_ARG;
    break;
   }
  } else {
   if (req->req.length != 16) {
    req->req.error = RAW1394_ERROR_INVALID_ARG;
    break;
   }
  }
  packet = hpsb_make_lock64packet(fi->host, node, addr,
      req->req.misc, ((void*)0), 0);
  if (!packet)
   return -ENOMEM;

  if (copy_from_user(packet->data, int2ptr(req->req.sendb),
       req->req.length)) {
   req->req.error = RAW1394_ERROR_MEMFAULT;
   break;
  }

  req->data = packet->data;
  req->req.length = 8;
  break;

 default:
  req->req.error = RAW1394_ERROR_STATE_ORDER;
 }

 req->packet = packet;

 if (req->req.error) {
  req->req.length = 0;
  queue_complete_req(req);
  return 0;
 }

 hpsb_set_packet_complete_task(packet,
          (void (*)(void *))queue_complete_cb, req);

 spin_lock_irqsave(&fi->reqlists_lock, flags);
 list_add_tail(&req->list, &fi->req_pending);
 spin_unlock_irqrestore(&fi->reqlists_lock, flags);

 packet->generation = req->req.generation;

 if (hpsb_send_packet(packet) < 0) {
  req->req.error = RAW1394_ERROR_SEND_ERROR;
  req->req.length = 0;
  hpsb_free_tlabel(packet);
  queue_complete_req(req);
 }
 return 0;
}
