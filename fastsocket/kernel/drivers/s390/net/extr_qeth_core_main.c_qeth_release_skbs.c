
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; int users; scalar_t__ sk; } ;
struct qeth_qdio_out_buffer {int skb_list; int state; } ;
struct iucv_sock {int (* sk_txnotify ) (struct sk_buff*,int ) ;} ;


 int BUG_ON (int) ;
 scalar_t__ ETH_P_AF_IUCV ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,long) ;
 scalar_t__ QETH_QDIO_BUF_IN_CQ ;
 scalar_t__ QETH_QDIO_BUF_PENDING ;
 int TRACE ;
 int TX_NOTIFY_GENERALERROR ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct iucv_sock* iucv_sk (scalar_t__) ;
 struct sk_buff* skb_dequeue (int *) ;
 int stub1 (struct sk_buff*,int ) ;

__attribute__((used)) static void qeth_release_skbs(struct qeth_qdio_out_buffer *buf)
{
 struct sk_buff *skb;
 struct iucv_sock *iucv;
 int notify_general_error = 0;

 if (atomic_read(&buf->state) == QETH_QDIO_BUF_PENDING)
  notify_general_error = 1;


 BUG_ON(atomic_read(&buf->state) == QETH_QDIO_BUF_IN_CQ);

 skb = skb_dequeue(&buf->skb_list);
 while (skb) {
  QETH_DBF_TEXT(TRACE, 5, "skbr");
  QETH_DBF_TEXT_(TRACE, 5, "%lx", (long) skb);
  if (notify_general_error && skb->protocol == ETH_P_AF_IUCV) {
   if (skb->sk) {
    iucv = iucv_sk(skb->sk);
    iucv->sk_txnotify(skb, TX_NOTIFY_GENERALERROR);
   }
  }
  atomic_dec(&skb->users);
  dev_kfree_skb_any(skb);
  skb = skb_dequeue(&buf->skb_list);
 }
}
