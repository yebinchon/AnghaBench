
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int queue; int * complete_routine; scalar_t__ no_waiter; } ;


 int hpsb_free_packet (struct hpsb_packet*) ;
 int hpsbpkt_queue ;
 int khpsbpkt_thread ;
 int list_add_tail (int *,int *) ;
 int pending_packets_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void queue_packet_complete(struct hpsb_packet *packet)
{
 unsigned long flags;

 if (packet->no_waiter) {
  hpsb_free_packet(packet);
  return;
 }
 if (packet->complete_routine != ((void*)0)) {
  spin_lock_irqsave(&pending_packets_lock, flags);
  list_add_tail(&packet->queue, &hpsbpkt_queue);
  spin_unlock_irqrestore(&pending_packets_lock, flags);
  wake_up_process(khpsbpkt_thread);
 }
 return;
}
