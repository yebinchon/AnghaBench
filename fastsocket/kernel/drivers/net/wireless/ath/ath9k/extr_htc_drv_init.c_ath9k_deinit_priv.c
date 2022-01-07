
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath9k_htc_priv {int * ah; } ;


 int ath9k_hw_deinit (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void ath9k_deinit_priv(struct ath9k_htc_priv *priv)
{
 ath9k_hw_deinit(priv->ah);
 kfree(priv->ah);
 priv->ah = ((void*)0);
}
