
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnad_rx_unmap_q {int alloc_order; int map_size; int type; } ;
struct TYPE_3__ {int enet; } ;
struct bnad {TYPE_1__ bna; } ;
struct bna_rcb {TYPE_2__* rxq; int id; struct bnad_rx_unmap_q* unmap_q; } ;
struct TYPE_4__ {int buffer_size; } ;


 int BNAD_RXBUF_PAGE ;
 int BUG_ON (int) ;
 int PAGE_SIZE ;
 int bna_enet_mtu_get (int *) ;
 scalar_t__ bna_is_small_rxq (int ) ;
 int bnad_rxq_alloc_uninit (struct bnad*,struct bna_rcb*) ;
 int get_order (int) ;

__attribute__((used)) static int
bnad_rxq_alloc_init(struct bnad *bnad, struct bna_rcb *rcb)
{
 struct bnad_rx_unmap_q *unmap_q = rcb->unmap_q;
 int mtu, order;

 bnad_rxq_alloc_uninit(bnad, rcb);

 mtu = bna_enet_mtu_get(&bnad->bna.enet);
 order = get_order(mtu);

 if (bna_is_small_rxq(rcb->id)) {
  unmap_q->alloc_order = 0;
  unmap_q->map_size = rcb->rxq->buffer_size;
 } else {
  unmap_q->alloc_order = order;
  unmap_q->map_size =
   (rcb->rxq->buffer_size > 2048) ?
   PAGE_SIZE << order : 2048;
 }

 BUG_ON(((PAGE_SIZE << order) % unmap_q->map_size));

 unmap_q->type = BNAD_RXBUF_PAGE;

 return 0;
}
