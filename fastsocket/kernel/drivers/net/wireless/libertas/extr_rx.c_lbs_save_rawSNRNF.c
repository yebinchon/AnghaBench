
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxpd {int nf; int snr; } ;
struct lbs_private {size_t numSNRNF; size_t nextSNRNF; int * rawNF; int * rawSNR; } ;


 size_t DEFAULT_DATA_AVG_FACTOR ;

__attribute__((used)) static void lbs_save_rawSNRNF(struct lbs_private *priv, struct rxpd *p_rx_pd)
{
 if (priv->numSNRNF < DEFAULT_DATA_AVG_FACTOR)
  priv->numSNRNF++;
 priv->rawSNR[priv->nextSNRNF] = p_rx_pd->snr;
 priv->rawNF[priv->nextSNRNF] = p_rx_pd->nf;
 priv->nextSNRNF++;
 if (priv->nextSNRNF >= DEFAULT_DATA_AVG_FACTOR)
  priv->nextSNRNF = 0;
 return;
}
