
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cxgbi_sock {int tid; int flags; int state; } ;


 int CXGBI_DBG_SOCK ;
 int CXGBI_DBG_TOE ;
 int __kfree_skb (struct sk_buff*) ;
 int cxgbi_sock_rcv_peer_close (struct cxgbi_sock*) ;
 int log_debug (int,char*,struct cxgbi_sock*,int ,int ,int ) ;

__attribute__((used)) static int do_peer_close(struct t3cdev *cdev, struct sk_buff *skb, void *ctx)
{
 struct cxgbi_sock *csk = ctx;

 log_debug(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
  "csk 0x%p,%u,0x%lx,%u.\n",
  csk, csk->state, csk->flags, csk->tid);

 cxgbi_sock_rcv_peer_close(csk);
 __kfree_skb(skb);
 return 0;
}
