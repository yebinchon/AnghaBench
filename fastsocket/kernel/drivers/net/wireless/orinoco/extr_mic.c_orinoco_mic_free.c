
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {scalar_t__ rx_tfm_mic; scalar_t__ tx_tfm_mic; } ;


 int crypto_free_hash (scalar_t__) ;

void orinoco_mic_free(struct orinoco_private *priv)
{
 if (priv->tx_tfm_mic)
  crypto_free_hash(priv->tx_tfm_mic);
 if (priv->rx_tfm_mic)
  crypto_free_hash(priv->rx_tfm_mic);
}
