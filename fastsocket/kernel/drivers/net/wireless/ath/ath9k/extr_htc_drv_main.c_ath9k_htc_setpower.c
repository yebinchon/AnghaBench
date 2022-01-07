
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath9k_htc_priv {int htc_pm_lock; int ah; } ;
typedef enum ath9k_power_mode { ____Placeholder_ath9k_power_mode } ath9k_power_mode ;


 int ath9k_hw_setpower (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

bool ath9k_htc_setpower(struct ath9k_htc_priv *priv,
   enum ath9k_power_mode mode)
{
 bool ret;

 mutex_lock(&priv->htc_pm_lock);
 ret = ath9k_hw_setpower(priv->ah, mode);
 mutex_unlock(&priv->htc_pm_lock);

 return ret;
}
