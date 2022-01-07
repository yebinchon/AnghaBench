
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct bnad_tx_unmap {struct sk_buff* skb; } ;
struct bnad {int dummy; } ;
struct bna_tcb {int q_depth; struct bnad_tx_unmap* unmap_q; } ;


 int bnad_tx_buff_unmap (struct bnad*,struct bnad_tx_unmap*,int,int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;

__attribute__((used)) static void
bnad_txq_cleanup(struct bnad *bnad, struct bna_tcb *tcb)
{
 struct bnad_tx_unmap *unmap_q = tcb->unmap_q;
 struct sk_buff *skb;
 int i;

 for (i = 0; i < tcb->q_depth; i++) {
  skb = unmap_q[i].skb;
  if (!skb)
   continue;
  bnad_tx_buff_unmap(bnad, unmap_q, tcb->q_depth, i);

  dev_kfree_skb_any(skb);
 }
}
