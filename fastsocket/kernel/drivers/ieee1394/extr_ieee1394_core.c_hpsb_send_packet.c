
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hpsb_packet {scalar_t__ generation; scalar_t__ node_id; size_t data_size; size_t header_size; scalar_t__ type; int speed_code; int header; scalar_t__ expect_response; int data; int queue; scalar_t__ sendtime; int refcnt; scalar_t__ no_waiter; int state; struct hpsb_host* host; } ;
struct hpsb_host {scalar_t__ node_id; int* speed; TYPE_1__* driver; int pending_packets; scalar_t__ in_bus_reset; scalar_t__ is_shutdown; } ;
typedef int quadlet_t ;
struct TYPE_2__ {int (* transmit_packet ) (struct hpsb_host*,struct hpsb_packet*) ;} ;


 int ACK_COMPLETE ;
 int ACK_PENDING ;
 size_t ALL_NODES ;
 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int HPSB_ERR (char*) ;
 int HZ ;
 size_t NODEID_TO_NODE (scalar_t__) ;
 int WARN_ON (int) ;
 int atomic_inc (int *) ;
 int dump_packet (char*,int ,int,int) ;
 scalar_t__ get_hpsb_generation (struct hpsb_host*) ;
 scalar_t__ hpsb_async ;
 int hpsb_packet_received (struct hpsb_host*,int *,size_t,int ) ;
 int hpsb_packet_sent (struct hpsb_host*,struct hpsb_packet*,int ) ;
 int hpsb_queued ;
 scalar_t__ jiffies ;
 int kfree (int *) ;
 int * kmalloc (size_t,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,int ,size_t) ;
 int pending_packets_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct hpsb_host*,struct hpsb_packet*) ;

int hpsb_send_packet(struct hpsb_packet *packet)
{
 struct hpsb_host *host = packet->host;

 if (host->is_shutdown)
  return -EINVAL;
 if (host->in_bus_reset ||
     (packet->generation != get_hpsb_generation(host)))
  return -EAGAIN;

 packet->state = hpsb_queued;


 WARN_ON(packet->no_waiter && packet->expect_response);

 if (!packet->no_waiter || packet->expect_response) {
  unsigned long flags;

  atomic_inc(&packet->refcnt);



  packet->sendtime = jiffies + 10 * HZ;
  spin_lock_irqsave(&pending_packets_lock, flags);
  list_add_tail(&packet->queue, &host->pending_packets);
  spin_unlock_irqrestore(&pending_packets_lock, flags);
 }

 if (packet->node_id == host->node_id) {


  quadlet_t *data;
  size_t size = packet->data_size + packet->header_size;

  data = kmalloc(size, GFP_ATOMIC);
  if (!data) {
   HPSB_ERR("unable to allocate memory for concatenating header and data");
   return -ENOMEM;
  }

  memcpy(data, packet->header, packet->header_size);

  if (packet->data_size)
   memcpy(((u8*)data) + packet->header_size, packet->data, packet->data_size);

  dump_packet("send packet local", packet->header, packet->header_size, -1);

  hpsb_packet_sent(host, packet, packet->expect_response ? ACK_PENDING : ACK_COMPLETE);
  hpsb_packet_received(host, data, size, 0);

  kfree(data);

  return 0;
 }

 if (packet->type == hpsb_async &&
     NODEID_TO_NODE(packet->node_id) != ALL_NODES)
  packet->speed_code =
   host->speed[NODEID_TO_NODE(packet->node_id)];

 dump_packet("send packet", packet->header, packet->header_size, packet->speed_code);

 return host->driver->transmit_packet(host, packet);
}
