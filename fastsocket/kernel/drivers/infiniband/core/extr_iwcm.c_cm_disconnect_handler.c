
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwcm_id_private {scalar_t__ state; int lock; } ;
struct iw_cm_event {int dummy; } ;


 scalar_t__ IW_CM_STATE_CLOSING ;
 scalar_t__ IW_CM_STATE_ESTABLISHED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cm_disconnect_handler(struct iwcm_id_private *cm_id_priv,
      struct iw_cm_event *iw_event)
{
 unsigned long flags;

 spin_lock_irqsave(&cm_id_priv->lock, flags);
 if (cm_id_priv->state == IW_CM_STATE_ESTABLISHED)
  cm_id_priv->state = IW_CM_STATE_CLOSING;
 spin_unlock_irqrestore(&cm_id_priv->lock, flags);
}
