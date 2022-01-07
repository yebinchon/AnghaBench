
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_flush_list; } ;
struct ipoib_dev_priv {int lock; TYPE_1__ cm; } ;
struct ipoib_cm_rx {int state; int list; int dev; } ;
struct ib_event {scalar_t__ event; } ;


 scalar_t__ IB_EVENT_QP_LAST_WQE_REACHED ;
 int IPOIB_CM_RX_FLUSH ;
 int ipoib_cm_start_rx_drain (struct ipoib_dev_priv*) ;
 int list_move (int *,int *) ;
 struct ipoib_dev_priv* netdev_priv (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipoib_cm_rx_event_handler(struct ib_event *event, void *ctx)
{
 struct ipoib_cm_rx *p = ctx;
 struct ipoib_dev_priv *priv = netdev_priv(p->dev);
 unsigned long flags;

 if (event->event != IB_EVENT_QP_LAST_WQE_REACHED)
  return;

 spin_lock_irqsave(&priv->lock, flags);
 list_move(&p->list, &priv->cm.rx_flush_list);
 p->state = IPOIB_CM_RX_FLUSH;
 ipoib_cm_start_rx_drain(priv);
 spin_unlock_irqrestore(&priv->lock, flags);
}
