
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int sk_state; } ;
struct sk_buff {int dummy; } ;
struct pppox_sock {int chan; } ;
struct TYPE_4__ {int rx_bytes; int rx_packets; } ;
struct pppol2tp_tunnel {TYPE_1__ stats; } ;
struct TYPE_5__ {int rx_bytes; int rx_errors; int rx_packets; } ;
struct pppol2tp_session {struct sock* sock; TYPE_2__ stats; int name; int debug; int nr; struct pppol2tp_tunnel* tunnel; } ;
struct TYPE_6__ {int length; scalar_t__ has_seq; } ;


 int KERN_DEBUG ;
 int KERN_INFO ;
 int PPPOL2TP_MSG_DATA ;
 int PPPOL2TP_MSG_SEQ ;
 TYPE_3__* PPPOL2TP_SKB_CB (struct sk_buff*) ;
 int PPPOX_BOUND ;
 int PRINTK (int ,int ,int ,char*,int ,...) ;
 int kfree_skb (struct sk_buff*) ;
 int nf_reset (struct sk_buff*) ;
 int ppp_input (int *,struct sk_buff*) ;
 struct pppox_sock* pppox_sk (struct sock*) ;
 int secpath_reset (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void pppol2tp_recv_dequeue_skb(struct pppol2tp_session *session, struct sk_buff *skb)
{
 struct pppol2tp_tunnel *tunnel = session->tunnel;
 int length = PPPOL2TP_SKB_CB(skb)->length;
 struct sock *session_sock = ((void*)0);




 skb_orphan(skb);

 tunnel->stats.rx_packets++;
 tunnel->stats.rx_bytes += length;
 session->stats.rx_packets++;
 session->stats.rx_bytes += length;

 if (PPPOL2TP_SKB_CB(skb)->has_seq) {

  session->nr++;
  PRINTK(session->debug, PPPOL2TP_MSG_SEQ, KERN_DEBUG,
         "%s: updated nr to %hu\n", session->name, session->nr);
 }




 session_sock = session->sock;
 if (session_sock->sk_state & PPPOX_BOUND) {
  struct pppox_sock *po;
  PRINTK(session->debug, PPPOL2TP_MSG_DATA, KERN_DEBUG,
         "%s: recv %d byte data frame, passing to ppp\n",
         session->name, length);
  secpath_reset(skb);
  skb_dst_drop(skb);
  nf_reset(skb);

  po = pppox_sk(session_sock);
  ppp_input(&po->chan, skb);
 } else {
  PRINTK(session->debug, PPPOL2TP_MSG_DATA, KERN_INFO,
         "%s: socket not bound\n", session->name);


  session->stats.rx_errors++;
  kfree_skb(skb);
 }

 sock_put(session->sock);
}
