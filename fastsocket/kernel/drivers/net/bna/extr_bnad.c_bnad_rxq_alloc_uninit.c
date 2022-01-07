
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad_rx_unmap_q {int reuse_pi; int alloc_order; int type; scalar_t__ map_size; } ;
struct bnad {int dummy; } ;
struct bna_rcb {struct bnad_rx_unmap_q* unmap_q; } ;


 int BNAD_RXBUF_NONE ;

__attribute__((used)) static inline void
bnad_rxq_alloc_uninit(struct bnad *bnad, struct bna_rcb *rcb)
{
 struct bnad_rx_unmap_q *unmap_q = rcb->unmap_q;

 unmap_q->reuse_pi = -1;
 unmap_q->alloc_order = -1;
 unmap_q->map_size = 0;
 unmap_q->type = BNAD_RXBUF_NONE;
}
