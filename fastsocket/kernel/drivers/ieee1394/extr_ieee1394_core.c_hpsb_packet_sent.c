
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int ack_code; scalar_t__ state; scalar_t__ sendtime; int queue; int expect_response; int refcnt; scalar_t__ no_waiter; } ;
struct hpsb_host {scalar_t__ timeout_interval; int timeout; } ;


 int ACK_PENDING ;
 int atomic_dec (int *) ;
 scalar_t__ hpsb_complete ;
 int hpsb_free_packet (struct hpsb_packet*) ;
 scalar_t__ hpsb_pending ;
 scalar_t__ jiffies ;
 int list_del_init (int *) ;
 int mod_timer (int *,scalar_t__) ;
 int pending_packets_lock ;
 int queue_packet_complete (struct hpsb_packet*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void hpsb_packet_sent(struct hpsb_host *host, struct hpsb_packet *packet,
        int ackcode)
{
 unsigned long flags;

 spin_lock_irqsave(&pending_packets_lock, flags);

 packet->ack_code = ackcode;

 if (packet->no_waiter || packet->state == hpsb_complete) {

  spin_unlock_irqrestore(&pending_packets_lock, flags);
  hpsb_free_packet(packet);
  return;
 }

 atomic_dec(&packet->refcnt);


 if (ackcode != ACK_PENDING || !packet->expect_response) {
  packet->state = hpsb_complete;
  list_del_init(&packet->queue);
  spin_unlock_irqrestore(&pending_packets_lock, flags);
  queue_packet_complete(packet);
  return;
 }

 packet->state = hpsb_pending;
 packet->sendtime = jiffies;

 spin_unlock_irqrestore(&pending_packets_lock, flags);

 mod_timer(&host->timeout, jiffies + host->timeout_interval);
}
