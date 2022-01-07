
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_port_private {int work; int wq; int port_list; } ;
struct ib_cq {struct ib_mad_port_private* cq_context; } ;


 int ib_mad_port_list_lock ;
 int list_empty (int *) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ib_mad_thread_completion_handler(struct ib_cq *cq, void *arg)
{
 struct ib_mad_port_private *port_priv = cq->cq_context;
 unsigned long flags;

 spin_lock_irqsave(&ib_mad_port_list_lock, flags);
 if (!list_empty(&port_priv->port_list))
  queue_work(port_priv->wq, &port_priv->work);
 spin_unlock_irqrestore(&ib_mad_port_list_lock, flags);
}
