
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int napi; } ;


 scalar_t__ likely (int ) ;
 int napi_schedule (int *) ;
 int stmmac_disable_irq (struct stmmac_priv*) ;
 int stmmac_has_work (struct stmmac_priv*) ;

__attribute__((used)) static inline void _stmmac_schedule(struct stmmac_priv *priv)
{
 if (likely(stmmac_has_work(priv))) {
  stmmac_disable_irq(priv);
  napi_schedule(&priv->napi);
 }
}
