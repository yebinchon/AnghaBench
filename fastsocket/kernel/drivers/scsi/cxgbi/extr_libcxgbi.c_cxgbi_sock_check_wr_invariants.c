
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {scalar_t__ wr_max_cred; scalar_t__ wr_cred; int tid; } ;


 int cxgbi_sock_count_pending_wrs (struct cxgbi_sock const*) ;
 int pr_err (char*,struct cxgbi_sock const*,int ,scalar_t__,int,scalar_t__) ;
 scalar_t__ unlikely (int) ;

void cxgbi_sock_check_wr_invariants(const struct cxgbi_sock *csk)
{
 int pending = cxgbi_sock_count_pending_wrs(csk);

 if (unlikely(csk->wr_cred + pending != csk->wr_max_cred))
  pr_err("csk 0x%p, tid %u, credit %u + %u != %u.\n",
   csk, csk->tid, csk->wr_cred, pending, csk->wr_max_cred);
}
