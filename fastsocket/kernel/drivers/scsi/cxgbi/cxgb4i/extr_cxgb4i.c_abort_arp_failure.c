
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct cxgbi_sock {size_t port_id; TYPE_1__* cdev; int tid; int flags; int state; } ;
struct cpl_abort_req {int cmd; } ;
struct TYPE_2__ {int * ports; } ;


 int CPL_ABORT_NO_RST ;
 int CXGBI_DBG_SOCK ;
 int CXGBI_DBG_TOE ;
 int cxgb4_ofld_send (int ,struct sk_buff*) ;
 int log_debug (int,char*,struct cxgbi_sock*,int ,int ,int ) ;

__attribute__((used)) static void abort_arp_failure(void *handle, struct sk_buff *skb)
{
 struct cxgbi_sock *csk = (struct cxgbi_sock *)handle;
 struct cpl_abort_req *req;

 log_debug(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
  "csk 0x%p,%u,0x%lx, tid %u, abort.\n",
  csk, csk->state, csk->flags, csk->tid);
 req = (struct cpl_abort_req *)skb->data;
 req->cmd = CPL_ABORT_NO_RST;
 cxgb4_ofld_send(csk->cdev->ports[csk->port_id], skb);
}
