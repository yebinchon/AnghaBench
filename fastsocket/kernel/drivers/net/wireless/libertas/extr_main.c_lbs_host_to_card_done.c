
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {scalar_t__ tx_pending_len; int driver_lock; int waitq; int cur_cmd; int dnld_sent; } ;


 int DNLD_RES_RECEIVED ;
 int LBS_DEB_THREAD ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

void lbs_host_to_card_done(struct lbs_private *priv)
{
 unsigned long flags;

 lbs_deb_enter(LBS_DEB_THREAD);

 spin_lock_irqsave(&priv->driver_lock, flags);

 priv->dnld_sent = DNLD_RES_RECEIVED;


 if (!priv->cur_cmd || priv->tx_pending_len > 0)
  wake_up_interruptible(&priv->waitq);

 spin_unlock_irqrestore(&priv->driver_lock, flags);
 lbs_deb_leave(LBS_DEB_THREAD);
}
