
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; scalar_t__ sk; } ;
struct qeth_qdio_out_q {int dummy; } ;
struct qeth_qdio_out_buffer {int skb_list; } ;
struct iucv_sock {int (* sk_txnotify ) (struct sk_buff*,int) ;} ;
typedef enum iucv_tx_notify { ____Placeholder_iucv_tx_notify } iucv_tx_notify ;


 scalar_t__ ETH_P_AF_IUCV ;
 int QETH_DBF_TEXT_ (int ,int,char*,long) ;
 int TRACE ;
 struct iucv_sock* iucv_sk (scalar_t__) ;
 struct sk_buff* skb_peek (int *) ;
 scalar_t__ skb_queue_empty (int *) ;
 scalar_t__ skb_queue_is_last (int *,struct sk_buff*) ;
 struct sk_buff* skb_queue_next (int *,struct sk_buff*) ;
 int stub1 (struct sk_buff*,int) ;

__attribute__((used)) static void qeth_notify_skbs(struct qeth_qdio_out_q *q,
  struct qeth_qdio_out_buffer *buf,
  enum iucv_tx_notify notification)
{
 struct sk_buff *skb;

 if (skb_queue_empty(&buf->skb_list))
  goto out;
 skb = skb_peek(&buf->skb_list);
 while (skb) {
  QETH_DBF_TEXT_(TRACE, 5, "skbn%d", notification);
  QETH_DBF_TEXT_(TRACE, 5, "%lx", (long) skb);
  if (skb->protocol == ETH_P_AF_IUCV) {
   if (skb->sk) {
    struct iucv_sock *iucv = iucv_sk(skb->sk);
    iucv->sk_txnotify(skb, notification);
   }
  }
  if (skb_queue_is_last(&buf->skb_list, skb))
   skb = ((void*)0);
else
   skb = skb_queue_next(&buf->skb_list, skb);
 }
out:
 return;
}
