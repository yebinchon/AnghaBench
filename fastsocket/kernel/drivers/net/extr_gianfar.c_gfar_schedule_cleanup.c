
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct gfar_private {int txlock; int rxlock; TYPE_1__* regs; int napi; } ;
struct TYPE_2__ {int ievent; int imask; } ;


 int IEVENT_RTX_MASK ;
 int IMASK_RTX_DISABLED ;
 int __napi_schedule (int *) ;
 int gfar_write (int *,int ) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gfar_schedule_cleanup(struct net_device *dev)
{
 struct gfar_private *priv = netdev_priv(dev);
 unsigned long flags;

 spin_lock_irqsave(&priv->txlock, flags);
 spin_lock(&priv->rxlock);

 if (napi_schedule_prep(&priv->napi)) {
  gfar_write(&priv->regs->imask, IMASK_RTX_DISABLED);
  __napi_schedule(&priv->napi);
 } else {




  gfar_write(&priv->regs->ievent, IEVENT_RTX_MASK);
 }

 spin_unlock(&priv->rxlock);
 spin_unlock_irqrestore(&priv->txlock, flags);
}
