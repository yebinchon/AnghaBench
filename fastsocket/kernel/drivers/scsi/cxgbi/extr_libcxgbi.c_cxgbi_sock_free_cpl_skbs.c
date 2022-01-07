
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {int * cpl_abort_rpl; int * cpl_abort_req; int * cpl_close; } ;


 int kfree_skb (int *) ;

void cxgbi_sock_free_cpl_skbs(struct cxgbi_sock *csk)
{
 if (csk->cpl_close) {
  kfree_skb(csk->cpl_close);
  csk->cpl_close = ((void*)0);
 }
 if (csk->cpl_abort_req) {
  kfree_skb(csk->cpl_abort_req);
  csk->cpl_abort_req = ((void*)0);
 }
 if (csk->cpl_abort_rpl) {
  kfree_skb(csk->cpl_abort_rpl);
  csk->cpl_abort_rpl = ((void*)0);
 }
}
