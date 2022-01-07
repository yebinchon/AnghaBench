
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ib_mad_send_wr_private {int send_buf; } ;
struct ib_mad_send_wc {int * send_buf; scalar_t__ vendor_err; int status; } ;
struct TYPE_5__ {int mad; int list; } ;
struct ib_mad_recv_wc {TYPE_2__* wc; TYPE_1__ recv_buf; int rmpp_list; } ;
struct TYPE_7__ {int (* recv_handler ) (TYPE_3__*,struct ib_mad_recv_wc*) ;scalar_t__ rmpp_version; } ;
struct ib_mad_agent_private {TYPE_3__ agent; int refcount; int lock; } ;
struct TYPE_6__ {unsigned long wr_id; } ;


 int IB_WC_SUCCESS ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_dec (int *) ;
 int deref_mad_agent (struct ib_mad_agent_private*) ;
 struct ib_mad_send_wr_private* ib_find_send_mad (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ;
 int ib_free_recv_mad (struct ib_mad_recv_wc*) ;
 int ib_mad_complete_send_wr (struct ib_mad_send_wr_private*,struct ib_mad_send_wc*) ;
 int ib_mark_mad_done (struct ib_mad_send_wr_private*) ;
 struct ib_mad_recv_wc* ib_process_rmpp_recv_wc (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ;
 scalar_t__ ib_response_mad (int ) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*,struct ib_mad_recv_wc*) ;
 int stub2 (TYPE_3__*,struct ib_mad_recv_wc*) ;

__attribute__((used)) static void ib_mad_complete_recv(struct ib_mad_agent_private *mad_agent_priv,
     struct ib_mad_recv_wc *mad_recv_wc)
{
 struct ib_mad_send_wr_private *mad_send_wr;
 struct ib_mad_send_wc mad_send_wc;
 unsigned long flags;

 INIT_LIST_HEAD(&mad_recv_wc->rmpp_list);
 list_add(&mad_recv_wc->recv_buf.list, &mad_recv_wc->rmpp_list);
 if (mad_agent_priv->agent.rmpp_version) {
  mad_recv_wc = ib_process_rmpp_recv_wc(mad_agent_priv,
            mad_recv_wc);
  if (!mad_recv_wc) {
   deref_mad_agent(mad_agent_priv);
   return;
  }
 }


 if (ib_response_mad(mad_recv_wc->recv_buf.mad)) {
  spin_lock_irqsave(&mad_agent_priv->lock, flags);
  mad_send_wr = ib_find_send_mad(mad_agent_priv, mad_recv_wc);
  if (!mad_send_wr) {
   spin_unlock_irqrestore(&mad_agent_priv->lock, flags);
   ib_free_recv_mad(mad_recv_wc);
   deref_mad_agent(mad_agent_priv);
   return;
  }
  ib_mark_mad_done(mad_send_wr);
  spin_unlock_irqrestore(&mad_agent_priv->lock, flags);


  mad_recv_wc->wc->wr_id = (unsigned long) &mad_send_wr->send_buf;
  mad_agent_priv->agent.recv_handler(&mad_agent_priv->agent,
         mad_recv_wc);
  atomic_dec(&mad_agent_priv->refcount);

  mad_send_wc.status = IB_WC_SUCCESS;
  mad_send_wc.vendor_err = 0;
  mad_send_wc.send_buf = &mad_send_wr->send_buf;
  ib_mad_complete_send_wr(mad_send_wr, &mad_send_wc);
 } else {
  mad_agent_priv->agent.recv_handler(&mad_agent_priv->agent,
         mad_recv_wc);
  deref_mad_agent(mad_agent_priv);
 }
}
