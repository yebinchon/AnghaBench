
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_endpoint {struct cxgbi_endpoint* dd_data; } ;
struct cxgbi_sock {scalar_t__ state; int callback_lock; int * user_data; int flags; } ;
struct cxgbi_endpoint {struct cxgbi_sock* csk; struct cxgbi_conn* cconn; } ;
struct cxgbi_conn {int * cep; scalar_t__ iconn; } ;


 scalar_t__ CTP_ESTABLISHED ;
 int CXGBI_DBG_ISCSI ;
 int CXGBI_DBG_SOCK ;
 int cxgbi_sock_closed (struct cxgbi_sock*) ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;
 int iscsi_destroy_endpoint (struct iscsi_endpoint*) ;
 int iscsi_suspend_tx (scalar_t__) ;
 scalar_t__ likely (int) ;
 int log_debug (int,char*,struct iscsi_endpoint*,struct cxgbi_endpoint*,struct cxgbi_conn*,struct cxgbi_sock*,scalar_t__,int ) ;
 int need_active_close (struct cxgbi_sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void cxgbi_ep_disconnect(struct iscsi_endpoint *ep)
{
 struct cxgbi_endpoint *cep = ep->dd_data;
 struct cxgbi_conn *cconn = cep->cconn;
 struct cxgbi_sock *csk = cep->csk;

 log_debug(1 << CXGBI_DBG_ISCSI | 1 << CXGBI_DBG_SOCK,
  "ep 0x%p, cep 0x%p, cconn 0x%p, csk 0x%p,%u,0x%lx.\n",
  ep, cep, cconn, csk, csk->state, csk->flags);

 if (cconn && cconn->iconn) {
  iscsi_suspend_tx(cconn->iconn);
  write_lock_bh(&csk->callback_lock);
  cep->csk->user_data = ((void*)0);
  cconn->cep = ((void*)0);
  write_unlock_bh(&csk->callback_lock);
 }
 iscsi_destroy_endpoint(ep);

 if (likely(csk->state >= CTP_ESTABLISHED))
  need_active_close(csk);
 else
  cxgbi_sock_closed(csk);

 cxgbi_sock_put(csk);
}
