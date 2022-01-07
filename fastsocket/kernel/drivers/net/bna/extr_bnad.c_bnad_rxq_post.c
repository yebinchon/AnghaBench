
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnad_rx_unmap_q {int type; } ;
struct bnad {int dummy; } ;
struct bna_rcb {int q_depth; struct bnad_rx_unmap_q* unmap_q; } ;


 scalar_t__ BNAD_RXBUF_IS_PAGE (int ) ;
 int BNAD_RXQ_REFILL_THRESHOLD_SHIFT ;
 int BNA_QE_FREE_CNT (struct bna_rcb*,int ) ;
 int bnad_rxq_refill_page (struct bnad*,struct bna_rcb*,int) ;
 int bnad_rxq_refill_skb (struct bnad*,struct bna_rcb*,int) ;

__attribute__((used)) static inline void
bnad_rxq_post(struct bnad *bnad, struct bna_rcb *rcb)
{
 struct bnad_rx_unmap_q *unmap_q = rcb->unmap_q;
 u32 to_alloc;

 to_alloc = BNA_QE_FREE_CNT(rcb, rcb->q_depth);
 if (!(to_alloc >> BNAD_RXQ_REFILL_THRESHOLD_SHIFT))
  return;

 if (BNAD_RXBUF_IS_PAGE(unmap_q->type))
  bnad_rxq_refill_page(bnad, rcb, to_alloc);
 else
  bnad_rxq_refill_skb(bnad, rcb, to_alloc);
}
