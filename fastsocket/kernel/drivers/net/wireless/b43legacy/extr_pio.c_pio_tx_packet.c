
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; } ;
struct b43legacy_txhdr_fw3 {int dummy; } ;
struct b43legacy_pioqueue {scalar_t__ tx_devq_size; scalar_t__ tx_devq_packets; scalar_t__ tx_devq_used; int txrunning; TYPE_1__* dev; } ;
struct b43legacy_pio_txpacket {int list; struct sk_buff* skb; struct b43legacy_pioqueue* queue; } ;
struct TYPE_2__ {int wl; } ;


 scalar_t__ B43legacy_PIO_MAXTXDEVQPACKETS ;
 int B43legacy_WARN_ON (int) ;
 int EBUSY ;
 int ENOKEY ;
 int b43legacywarn (int ,char*) ;
 int free_txpacket (struct b43legacy_pio_txpacket*,int) ;
 int list_move_tail (int *,int *) ;
 int pio_tx_write_fragment (struct b43legacy_pioqueue*,struct sk_buff*,struct b43legacy_pio_txpacket*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pio_tx_packet(struct b43legacy_pio_txpacket *packet)
{
 struct b43legacy_pioqueue *queue = packet->queue;
 struct sk_buff *skb = packet->skb;
 u16 octets;
 int err;

 octets = (u16)skb->len + sizeof(struct b43legacy_txhdr_fw3);
 if (queue->tx_devq_size < octets) {
  b43legacywarn(queue->dev->wl, "PIO queue too small. "
   "Dropping packet.\n");

  free_txpacket(packet, 1);
  return 0;
 }
 B43legacy_WARN_ON(queue->tx_devq_packets >
     B43legacy_PIO_MAXTXDEVQPACKETS);
 B43legacy_WARN_ON(queue->tx_devq_used > queue->tx_devq_size);




 if (queue->tx_devq_packets == B43legacy_PIO_MAXTXDEVQPACKETS)
  return -EBUSY;
 if (queue->tx_devq_used + octets > queue->tx_devq_size)
  return -EBUSY;

 err = pio_tx_write_fragment(queue, skb, packet,
         sizeof(struct b43legacy_txhdr_fw3));
 if (unlikely(err == -ENOKEY)) {


  free_txpacket(packet, 1);
  return 0;
 }




 queue->tx_devq_packets++;
 queue->tx_devq_used += octets;




 list_move_tail(&packet->list, &queue->txrunning);

 return 0;
}
