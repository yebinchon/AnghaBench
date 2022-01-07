
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_priv {int status; TYPE_1__* assoc_network; } ;
struct TYPE_2__ {int beacon_interval; } ;


 int STATUS_ASSOCIATED ;

__attribute__((used)) static int ipw_passive_dwell_time(struct ipw_priv *priv)
{





 if (priv->status & STATUS_ASSOCIATED
     && priv->assoc_network->beacon_interval > 10)
  return priv->assoc_network->beacon_interval - 10;
 else
  return 120;
}
