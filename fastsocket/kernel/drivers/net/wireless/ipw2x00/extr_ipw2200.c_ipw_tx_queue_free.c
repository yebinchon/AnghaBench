
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int * txq; int txq_cmd; } ;


 int ipw_queue_tx_free (struct ipw_priv*,int *) ;

__attribute__((used)) static void ipw_tx_queue_free(struct ipw_priv *priv)
{

 ipw_queue_tx_free(priv, &priv->txq_cmd);


 ipw_queue_tx_free(priv, &priv->txq[0]);
 ipw_queue_tx_free(priv, &priv->txq[1]);
 ipw_queue_tx_free(priv, &priv->txq[2]);
 ipw_queue_tx_free(priv, &priv->txq[3]);
}
