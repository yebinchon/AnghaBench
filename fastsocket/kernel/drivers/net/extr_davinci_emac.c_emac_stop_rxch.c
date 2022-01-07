
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct emac_rxch {int teardown_pending; } ;
struct emac_priv {struct emac_rxch** rxch; } ;


 size_t BIT (size_t) ;
 int EMAC_RXINTMASKCLEAR ;
 int EMAC_RXTEARDOWN ;
 int emac_rxch_teardown (struct emac_priv*,size_t) ;
 int emac_write (int ,size_t) ;

__attribute__((used)) static void emac_stop_rxch(struct emac_priv *priv, u32 ch)
{
 struct emac_rxch *rxch = priv->rxch[ch];

 if (rxch) {
  rxch->teardown_pending = 1;
  emac_write(EMAC_RXTEARDOWN, ch);

  emac_rxch_teardown(priv, ch);
  rxch->teardown_pending = 0;
  emac_write(EMAC_RXINTMASKCLEAR, BIT(ch));
 }
}
