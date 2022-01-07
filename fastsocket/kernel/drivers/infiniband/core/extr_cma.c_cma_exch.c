
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_id_private {int state; int lock; } ;
typedef enum rdma_cm_state { ____Placeholder_rdma_cm_state } rdma_cm_state ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static enum rdma_cm_state cma_exch(struct rdma_id_private *id_priv,
       enum rdma_cm_state exch)
{
 unsigned long flags;
 enum rdma_cm_state old;

 spin_lock_irqsave(&id_priv->lock, flags);
 old = id_priv->state;
 id_priv->state = exch;
 spin_unlock_irqrestore(&id_priv->lock, flags);
 return old;
}
