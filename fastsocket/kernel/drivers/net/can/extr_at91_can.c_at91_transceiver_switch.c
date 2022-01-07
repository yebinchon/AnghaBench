
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct at91_priv {TYPE_1__* pdata; } ;
struct TYPE_2__ {int (* transceiver_switch ) (int) ;} ;


 int stub1 (int) ;

__attribute__((used)) static void at91_transceiver_switch(const struct at91_priv *priv, int on)
{
 if (priv->pdata && priv->pdata->transceiver_switch)
  priv->pdata->transceiver_switch(on);
}
