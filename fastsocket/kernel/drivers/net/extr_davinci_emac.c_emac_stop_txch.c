
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct emac_txch {int teardown_pending; } ;
struct emac_priv {struct emac_txch** txch; } ;


 int BIT (size_t) ;
 int EMAC_TXINTMASKCLEAR ;
 int EMAC_TXTEARDOWN ;
 int emac_txch_teardown (struct emac_priv*,size_t) ;
 int emac_write (int ,int ) ;

__attribute__((used)) static void emac_stop_txch(struct emac_priv *priv, u32 ch)
{
 struct emac_txch *txch = priv->txch[ch];

 if (txch) {
  txch->teardown_pending = 1;
  emac_write(EMAC_TXTEARDOWN, 0);
  emac_txch_teardown(priv, ch);
  txch->teardown_pending = 0;
  emac_write(EMAC_TXINTMASKCLEAR, BIT(ch));
 }
}
