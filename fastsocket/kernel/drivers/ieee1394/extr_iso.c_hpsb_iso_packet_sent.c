
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_iso {int buf_packets; int n_ready_packets; int xmit_cycle; int pkt_dma; int lock; int overflows; } ;


 int atomic_inc (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void hpsb_iso_packet_sent(struct hpsb_iso *iso, int cycle, int error)
{
 unsigned long flags;
 spin_lock_irqsave(&iso->lock, flags);




 cycle += iso->buf_packets - iso->n_ready_packets;
 cycle %= 8000;

 iso->xmit_cycle = cycle;
 iso->n_ready_packets++;
 iso->pkt_dma = (iso->pkt_dma + 1) % iso->buf_packets;

 if (iso->n_ready_packets == iso->buf_packets || error != 0) {

  atomic_inc(&iso->overflows);
 }

 spin_unlock_irqrestore(&iso->lock, flags);
}
