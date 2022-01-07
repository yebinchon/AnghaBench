
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxgbi_sock {scalar_t__ state; int lock; TYPE_1__* cdev; int receive_queue; int dst; int tid; int flags; } ;
struct TYPE_2__ {int (* csk_send_close_req ) (struct cxgbi_sock*) ;int (* csk_send_abort_req ) (struct cxgbi_sock*) ;} ;


 int CTPF_ACTIVE_CLOSE_NEEDED ;
 int CTP_ACTIVE_CLOSE ;
 scalar_t__ CTP_ACTIVE_OPEN ;
 int CTP_CLOSE_WAIT_2 ;
 scalar_t__ CTP_ESTABLISHED ;
 scalar_t__ CTP_PASSIVE_CLOSE ;
 int CXGBI_DBG_SOCK ;
 int __skb_queue_purge (int *) ;
 int cxgbi_sock_set_flag (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_set_state (struct cxgbi_sock*,int ) ;
 int dst_confirm (int ) ;
 int log_debug (int,char*,struct cxgbi_sock*,scalar_t__,int ,int ) ;
 int skb_queue_len (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct cxgbi_sock*) ;
 int stub2 (struct cxgbi_sock*) ;

__attribute__((used)) static void need_active_close(struct cxgbi_sock *csk)
{
 int data_lost;
 int close_req = 0;

 log_debug(1 << CXGBI_DBG_SOCK, "csk 0x%p,%u,0x%lx,%u.\n",
  csk, (csk)->state, (csk)->flags, (csk)->tid);
 spin_lock_bh(&csk->lock);
 dst_confirm(csk->dst);
 data_lost = skb_queue_len(&csk->receive_queue);
 __skb_queue_purge(&csk->receive_queue);

 if (csk->state == CTP_ACTIVE_OPEN)
  cxgbi_sock_set_flag(csk, CTPF_ACTIVE_CLOSE_NEEDED);
 else if (csk->state == CTP_ESTABLISHED) {
  close_req = 1;
  cxgbi_sock_set_state(csk, CTP_ACTIVE_CLOSE);
 } else if (csk->state == CTP_PASSIVE_CLOSE) {
  close_req = 1;
  cxgbi_sock_set_state(csk, CTP_CLOSE_WAIT_2);
 }

 if (close_req) {
  if (data_lost)
   csk->cdev->csk_send_abort_req(csk);
  else
   csk->cdev->csk_send_close_req(csk);
 }

 spin_unlock_bh(&csk->lock);
}
