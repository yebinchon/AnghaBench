
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath9k_htc_priv {int ps_usecount; int htc_pm_lock; int ah; } ;


 int ATH9K_PM_AWAKE ;
 int ath9k_hw_setpower (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ath9k_htc_ps_wakeup(struct ath9k_htc_priv *priv)
{
 mutex_lock(&priv->htc_pm_lock);
 if (++priv->ps_usecount != 1)
  goto unlock;
 ath9k_hw_setpower(priv->ah, ATH9K_PM_AWAKE);

unlock:
 mutex_unlock(&priv->htc_pm_lock);
}
