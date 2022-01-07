
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_pioqueue {int nr_txfree; int txfree; struct b43legacy_pio_txpacket* tx_packets_cache; } ;
struct b43legacy_pio_txpacket {int list; struct b43legacy_pioqueue* queue; } ;


 int B43legacy_PIO_MAXTXPACKETS ;
 int INIT_LIST_HEAD (int *) ;
 int list_add (int *,int *) ;

__attribute__((used)) static void setup_txqueues(struct b43legacy_pioqueue *queue)
{
 struct b43legacy_pio_txpacket *packet;
 int i;

 queue->nr_txfree = B43legacy_PIO_MAXTXPACKETS;
 for (i = 0; i < B43legacy_PIO_MAXTXPACKETS; i++) {
  packet = &(queue->tx_packets_cache[i]);

  packet->queue = queue;
  INIT_LIST_HEAD(&packet->list);

  list_add(&packet->list, &queue->txfree);
 }
}
