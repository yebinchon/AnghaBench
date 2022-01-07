
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_htc_priv {TYPE_1__* ah; } ;
struct TYPE_2__ {scalar_t__ rfkill_polarity; int rfkill_gpio; } ;


 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 scalar_t__ ath9k_hw_gpio_get (TYPE_1__*,int ) ;

__attribute__((used)) static bool ath_is_rfkill_set(struct ath9k_htc_priv *priv)
{
 bool is_blocked;

 ath9k_htc_ps_wakeup(priv);
 is_blocked = ath9k_hw_gpio_get(priv->ah, priv->ah->rfkill_gpio) ==
       priv->ah->rfkill_polarity;
 ath9k_htc_ps_restore(priv);

 return is_blocked;
}
