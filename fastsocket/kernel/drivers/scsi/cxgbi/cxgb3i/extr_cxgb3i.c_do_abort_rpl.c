
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cxgbi_sock {unsigned long flags; int state; } ;
struct cpl_abort_rpl_rss {scalar_t__ status; } ;


 scalar_t__ CPL_ERR_ABORT_FAILED ;
 int CXGBI_DBG_SOCK ;
 int CXGBI_DBG_TOE ;
 int __kfree_skb (struct sk_buff*) ;
 struct cpl_abort_rpl_rss* cplhdr (struct sk_buff*) ;
 int cxgbi_sock_rcv_abort_rpl (struct cxgbi_sock*) ;
 int log_debug (int,char*,scalar_t__,struct cxgbi_sock*,int ,unsigned long) ;

__attribute__((used)) static int do_abort_rpl(struct t3cdev *cdev, struct sk_buff *skb, void *ctx)
{
 struct cpl_abort_rpl_rss *rpl = cplhdr(skb);
 struct cxgbi_sock *csk = ctx;

 log_debug(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
  "status 0x%x, csk 0x%p, s %u, 0x%lx.\n",
  rpl->status, csk, csk ? csk->state : 0,
  csk ? csk->flags : 0UL);






 if (rpl->status == CPL_ERR_ABORT_FAILED)
  goto rel_skb;







 if (csk)
  cxgbi_sock_rcv_abort_rpl(csk);
rel_skb:
 __kfree_skb(skb);
 return 0;
}
