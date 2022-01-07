
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {struct sk_buff* next; scalar_t__ len; } ;
struct nes_qp {int cm_node; int pau_list; } ;
struct nes_device {int dummy; } ;


 int PCI_DMA_TODEVICE ;
 scalar_t__ after (int ,int ) ;
 int nes_get_seq (struct sk_buff*,int *,int *,int *,int *) ;
 int nes_mgt_free_skb (struct nes_device*,struct sk_buff*,int ) ;
 int nes_rem_ref_cm_node (int ) ;
 struct sk_buff* skb_peek (int *) ;
 scalar_t__ skb_queue_empty (int *) ;
 int skb_unlink (struct sk_buff*,int *) ;

__attribute__((used)) static struct sk_buff *nes_get_next_skb(struct nes_device *nesdev, struct nes_qp *nesqp,
     struct sk_buff *skb, u32 nextseq, u32 *ack,
     u16 *wnd, u32 *fin_rcvd, u32 *rst_rcvd)
{
 u32 seq;
 bool processacks;
 struct sk_buff *old_skb;

 if (skb) {

  if (skb->next == (struct sk_buff *)&nesqp->pau_list)
   goto out;
  skb = skb->next;
  processacks = 0;
 } else {

  if (skb_queue_empty(&nesqp->pau_list))
   goto out;
  skb = skb_peek(&nesqp->pau_list);
  processacks = 1;
 }

 while (1) {
  seq = nes_get_seq(skb, ack, wnd, fin_rcvd, rst_rcvd);
  if (seq == nextseq) {
   if (skb->len || processacks)
    break;
  } else if (after(seq, nextseq)) {
   goto out;
  }

  if (skb->next == (struct sk_buff *)&nesqp->pau_list)
   goto out;

  old_skb = skb;
  skb = skb->next;
  skb_unlink(old_skb, &nesqp->pau_list);
  nes_mgt_free_skb(nesdev, old_skb, PCI_DMA_TODEVICE);
  nes_rem_ref_cm_node(nesqp->cm_node);
 }
 return skb;

out:
 return ((void*)0);
}
