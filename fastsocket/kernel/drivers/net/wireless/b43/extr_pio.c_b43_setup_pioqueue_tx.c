
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_wldev {TYPE_1__* dev; } ;
struct b43_pio_txqueue {int rev; unsigned int index; int buffer_size; int packets_list; struct b43_pio_txpacket* packets; int free_packet_slots; scalar_t__ mmio_base; struct b43_wldev* dev; } ;
struct b43_pio_txpacket {unsigned int index; int list; struct b43_pio_txqueue* queue; } ;
struct TYPE_2__ {int core_rev; } ;


 unsigned int ARRAY_SIZE (struct b43_pio_txpacket*) ;
 int B43_PIO_MAX_NR_TXPACKETS ;
 int B43_PIO_TXQBUFSIZE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int b43_piotx_read16 (struct b43_pio_txqueue*,int ) ;
 scalar_t__ index_to_pioqueue_base (struct b43_wldev*,unsigned int) ;
 struct b43_pio_txqueue* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ pio_txqueue_offset (struct b43_wldev*) ;

__attribute__((used)) static struct b43_pio_txqueue *b43_setup_pioqueue_tx(struct b43_wldev *dev,
           unsigned int index)
{
 struct b43_pio_txqueue *q;
 struct b43_pio_txpacket *p;
 unsigned int i;

 q = kzalloc(sizeof(*q), GFP_KERNEL);
 if (!q)
  return ((void*)0);
 q->dev = dev;
 q->rev = dev->dev->core_rev;
 q->mmio_base = index_to_pioqueue_base(dev, index) +
         pio_txqueue_offset(dev);
 q->index = index;

 q->free_packet_slots = B43_PIO_MAX_NR_TXPACKETS;
 if (q->rev >= 8) {
  q->buffer_size = 1920;
 } else {
  q->buffer_size = b43_piotx_read16(q, B43_PIO_TXQBUFSIZE);
  q->buffer_size -= 80;
 }

 INIT_LIST_HEAD(&q->packets_list);
 for (i = 0; i < ARRAY_SIZE(q->packets); i++) {
  p = &(q->packets[i]);
  INIT_LIST_HEAD(&p->list);
  p->index = i;
  p->queue = q;
  list_add(&p->list, &q->packets_list);
 }

 return q;
}
