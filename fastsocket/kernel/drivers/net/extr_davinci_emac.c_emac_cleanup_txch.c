
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct emac_txch {struct emac_txch* tx_complete; int * bd_mem; } ;
struct emac_priv {struct emac_txch** txch; } ;


 int kfree (struct emac_txch*) ;

__attribute__((used)) static void emac_cleanup_txch(struct emac_priv *priv, u32 ch)
{
 struct emac_txch *txch = priv->txch[ch];

 if (txch) {
  if (txch->bd_mem)
   txch->bd_mem = ((void*)0);
  kfree(txch->tx_complete);
  kfree(txch);
  priv->txch[ch] = ((void*)0);
 }
}
