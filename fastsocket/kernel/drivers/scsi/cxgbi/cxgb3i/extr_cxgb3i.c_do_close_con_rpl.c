
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cxgbi_sock {int tid; int flags; int state; } ;
struct cpl_close_con_rpl {int snd_nxt; } ;


 int CXGBI_DBG_SOCK ;
 int CXGBI_DBG_TOE ;
 int __kfree_skb (struct sk_buff*) ;
 struct cpl_close_con_rpl* cplhdr (struct sk_buff*) ;
 int cxgbi_sock_rcv_close_conn_rpl (struct cxgbi_sock*,int ) ;
 int log_debug (int,char*,struct cxgbi_sock*,int ,int ,int ,int ) ;
 int ntohl (int ) ;

__attribute__((used)) static int do_close_con_rpl(struct t3cdev *cdev, struct sk_buff *skb,
       void *ctx)
{
 struct cxgbi_sock *csk = ctx;
 struct cpl_close_con_rpl *rpl = cplhdr(skb);

 log_debug(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
  "csk 0x%p,%u,0x%lx,%u, snxt %u.\n",
  csk, csk->state, csk->flags, csk->tid, ntohl(rpl->snd_nxt));

 cxgbi_sock_rcv_close_conn_rpl(csk, ntohl(rpl->snd_nxt));
 __kfree_skb(skb);
 return 0;
}
