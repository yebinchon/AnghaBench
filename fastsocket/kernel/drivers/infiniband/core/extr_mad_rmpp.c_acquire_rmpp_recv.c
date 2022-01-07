
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mad_rmpp_recv {int refcount; } ;
struct ib_mad_recv_wc {int dummy; } ;
struct ib_mad_agent_private {int lock; } ;


 int atomic_inc (int *) ;
 struct mad_rmpp_recv* find_rmpp_recv (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct mad_rmpp_recv *
acquire_rmpp_recv(struct ib_mad_agent_private *agent,
    struct ib_mad_recv_wc *mad_recv_wc)
{
 struct mad_rmpp_recv *rmpp_recv;
 unsigned long flags;

 spin_lock_irqsave(&agent->lock, flags);
 rmpp_recv = find_rmpp_recv(agent, mad_recv_wc);
 if (rmpp_recv)
  atomic_inc(&rmpp_recv->refcount);
 spin_unlock_irqrestore(&agent->lock, flags);
 return rmpp_recv;
}
