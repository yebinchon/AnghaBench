
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int * cb; } ;
struct nes_vnic {int mgt_wait_queue; int mgt_skb_list; } ;
struct nes_rskb_cb {struct nes_qp* nesqp; } ;
struct nes_qp {int dummy; } ;


 int skb_queue_tail (int *,struct sk_buff*) ;
 int wake_up_interruptible (int *) ;

void nes_queue_mgt_skbs(struct sk_buff *skb, struct nes_vnic *nesvnic, struct nes_qp *nesqp)
{
 struct nes_rskb_cb *cb;

 cb = (struct nes_rskb_cb *)&skb->cb[0];
 cb->nesqp = nesqp;
 skb_queue_tail(&nesvnic->mgt_skb_list, skb);
 wake_up_interruptible(&nesvnic->mgt_wait_queue);
}
