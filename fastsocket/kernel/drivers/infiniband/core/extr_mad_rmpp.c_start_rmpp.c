
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mad_rmpp_recv {int newwin; int timeout_work; int state; int refcount; } ;
struct ib_mad_recv_wc {int recv_buf; } ;
struct ib_mad_agent_private {TYPE_2__* qp_info; int lock; } ;
struct TYPE_4__ {TYPE_1__* port_priv; } ;
struct TYPE_3__ {int wq; } ;


 int RMPP_STATE_COMPLETE ;
 int ack_recv (struct mad_rmpp_recv*,struct ib_mad_recv_wc*) ;
 int atomic_inc (int *) ;
 int complete_rmpp (struct mad_rmpp_recv*) ;
 struct ib_mad_recv_wc* continue_rmpp (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ;
 struct mad_rmpp_recv* create_rmpp_recv (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ;
 int deref_rmpp_recv (struct mad_rmpp_recv*) ;
 int destroy_rmpp_recv (struct mad_rmpp_recv*) ;
 scalar_t__ get_last_flag (int *) ;
 int ib_free_recv_mad (struct ib_mad_recv_wc*) ;
 scalar_t__ insert_rmpp_recv (struct ib_mad_agent_private*,struct mad_rmpp_recv*) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ window_size (struct ib_mad_agent_private*) ;

__attribute__((used)) static struct ib_mad_recv_wc *
start_rmpp(struct ib_mad_agent_private *agent,
    struct ib_mad_recv_wc *mad_recv_wc)
{
 struct mad_rmpp_recv *rmpp_recv;
 unsigned long flags;

 rmpp_recv = create_rmpp_recv(agent, mad_recv_wc);
 if (!rmpp_recv) {
  ib_free_recv_mad(mad_recv_wc);
  return ((void*)0);
 }

 spin_lock_irqsave(&agent->lock, flags);
 if (insert_rmpp_recv(agent, rmpp_recv)) {
  spin_unlock_irqrestore(&agent->lock, flags);

  destroy_rmpp_recv(rmpp_recv);
  return continue_rmpp(agent, mad_recv_wc);
 }
 atomic_inc(&rmpp_recv->refcount);

 if (get_last_flag(&mad_recv_wc->recv_buf)) {
  rmpp_recv->state = RMPP_STATE_COMPLETE;
  spin_unlock_irqrestore(&agent->lock, flags);
  complete_rmpp(rmpp_recv);
 } else {
  spin_unlock_irqrestore(&agent->lock, flags);

  queue_delayed_work(agent->qp_info->port_priv->wq,
       &rmpp_recv->timeout_work,
       msecs_to_jiffies(40000));
  rmpp_recv->newwin += window_size(agent);
  ack_recv(rmpp_recv, mad_recv_wc);
  mad_recv_wc = ((void*)0);
 }
 deref_rmpp_recv(rmpp_recv);
 return mad_recv_wc;
}
