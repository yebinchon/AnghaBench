
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_mad_send_wr_private {scalar_t__ status; int refcount; scalar_t__ timeout; int agent_list; struct ib_mad_agent_private* mad_agent_priv; } ;
struct ib_mad_send_wc {scalar_t__ status; } ;
struct TYPE_2__ {int (* send_handler ) (TYPE_1__*,struct ib_mad_send_wc*) ;scalar_t__ rmpp_version; } ;
struct ib_mad_agent_private {int lock; TYPE_1__ agent; } ;


 int IB_RMPP_RESULT_CONSUMED ;
 int IB_RMPP_RESULT_INTERNAL ;
 int IB_RMPP_RESULT_UNHANDLED ;
 scalar_t__ IB_WC_SUCCESS ;
 int adjust_timeout (struct ib_mad_agent_private*) ;
 int deref_mad_agent (struct ib_mad_agent_private*) ;
 int ib_process_rmpp_send_wc (struct ib_mad_send_wr_private*,struct ib_mad_send_wc*) ;
 int ib_rmpp_send_handler (struct ib_mad_send_wc*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,struct ib_mad_send_wc*) ;
 int wait_for_response (struct ib_mad_send_wr_private*) ;

void ib_mad_complete_send_wr(struct ib_mad_send_wr_private *mad_send_wr,
        struct ib_mad_send_wc *mad_send_wc)
{
 struct ib_mad_agent_private *mad_agent_priv;
 unsigned long flags;
 int ret;

 mad_agent_priv = mad_send_wr->mad_agent_priv;
 spin_lock_irqsave(&mad_agent_priv->lock, flags);
 if (mad_agent_priv->agent.rmpp_version) {
  ret = ib_process_rmpp_send_wc(mad_send_wr, mad_send_wc);
  if (ret == IB_RMPP_RESULT_CONSUMED)
   goto done;
 } else
  ret = IB_RMPP_RESULT_UNHANDLED;

 if (mad_send_wc->status != IB_WC_SUCCESS &&
     mad_send_wr->status == IB_WC_SUCCESS) {
  mad_send_wr->status = mad_send_wc->status;
  mad_send_wr->refcount -= (mad_send_wr->timeout > 0);
 }

 if (--mad_send_wr->refcount > 0) {
  if (mad_send_wr->refcount == 1 && mad_send_wr->timeout &&
      mad_send_wr->status == IB_WC_SUCCESS) {
   wait_for_response(mad_send_wr);
  }
  goto done;
 }


 list_del(&mad_send_wr->agent_list);
 adjust_timeout(mad_agent_priv);
 spin_unlock_irqrestore(&mad_agent_priv->lock, flags);

 if (mad_send_wr->status != IB_WC_SUCCESS )
  mad_send_wc->status = mad_send_wr->status;
 if (ret == IB_RMPP_RESULT_INTERNAL)
  ib_rmpp_send_handler(mad_send_wc);
 else
  mad_agent_priv->agent.send_handler(&mad_agent_priv->agent,
         mad_send_wc);


 deref_mad_agent(mad_agent_priv);
 return;
done:
 spin_unlock_irqrestore(&mad_agent_priv->lock, flags);
}
