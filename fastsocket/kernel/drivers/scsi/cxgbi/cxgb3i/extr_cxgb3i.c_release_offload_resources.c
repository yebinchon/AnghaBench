
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t3cdev {int dummy; } ;
struct cxgbi_sock {scalar_t__ wr_cred; scalar_t__ wr_max_cred; TYPE_1__* cdev; int * dst; int tid; scalar_t__ rss_qid; int flags; int state; } ;
struct TYPE_2__ {scalar_t__ lldev; } ;


 int CTPF_HAS_ATID ;
 int CTPF_HAS_TID ;
 int CXGBI_DBG_SOCK ;
 int CXGBI_DBG_TOE ;
 int cxgb3_remove_tid (struct t3cdev*,void*,int ) ;
 int cxgbi_sock_clear_flag (struct cxgbi_sock*,int ) ;
 scalar_t__ cxgbi_sock_flag (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_free_cpl_skbs (struct cxgbi_sock*) ;
 int cxgbi_sock_purge_wr_queue (struct cxgbi_sock*) ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;
 int cxgbi_sock_reset_wr_list (struct cxgbi_sock*) ;
 int free_atid (struct cxgbi_sock*) ;
 int l2t_put (struct cxgbi_sock*) ;
 int log_debug (int,char*,struct cxgbi_sock*,int ,int ,int ) ;

__attribute__((used)) static void release_offload_resources(struct cxgbi_sock *csk)
{
 struct t3cdev *t3dev = (struct t3cdev *)csk->cdev->lldev;

 log_debug(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
  "csk 0x%p,%u,0x%lx,%u.\n",
  csk, csk->state, csk->flags, csk->tid);

 csk->rss_qid = 0;
 cxgbi_sock_free_cpl_skbs(csk);

 if (csk->wr_cred != csk->wr_max_cred) {
  cxgbi_sock_purge_wr_queue(csk);
  cxgbi_sock_reset_wr_list(csk);
 }
 l2t_put(csk);
 if (cxgbi_sock_flag(csk, CTPF_HAS_ATID))
  free_atid(csk);
 else if (cxgbi_sock_flag(csk, CTPF_HAS_TID)) {
  cxgb3_remove_tid(t3dev, (void *)csk, csk->tid);
  cxgbi_sock_clear_flag(csk, CTPF_HAS_TID);
  cxgbi_sock_put(csk);
 }
 csk->dst = ((void*)0);
 csk->cdev = ((void*)0);
}
