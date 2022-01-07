
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {struct sock* sk; } ;
struct cxgbi_sock {int lock; int l2t; int tid; int flags; int state; } ;
struct cpl_act_open_req {int dummy; } ;


 int CXGBI_DBG_SOCK ;
 int CXGBI_DBG_TOE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int act_open_arp_failure ;
 struct sk_buff* alloc_wr (int,int ,int ) ;
 int cxgbi_sock_fail_act_open (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_get (struct cxgbi_sock*) ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;
 int log_debug (int,char*,struct cxgbi_sock*,int ,int ,int ) ;
 int send_act_open_req (struct cxgbi_sock*,struct sk_buff*,int ) ;
 int set_arp_failure_handler (struct sk_buff*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void act_open_retry_timer(unsigned long data)
{
 struct sk_buff *skb;
 struct cxgbi_sock *csk = (struct cxgbi_sock *)data;

 log_debug(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
  "csk 0x%p,%u,0x%lx,%u.\n",
  csk, csk->state, csk->flags, csk->tid);

 cxgbi_sock_get(csk);
 spin_lock_bh(&csk->lock);
 skb = alloc_wr(sizeof(struct cpl_act_open_req), 0, GFP_ATOMIC);
 if (!skb)
  cxgbi_sock_fail_act_open(csk, -ENOMEM);
 else {
  skb->sk = (struct sock *)csk;
  set_arp_failure_handler(skb, act_open_arp_failure);
  send_act_open_req(csk, skb, csk->l2t);
 }
 spin_unlock_bh(&csk->lock);
 cxgbi_sock_put(csk);
}
