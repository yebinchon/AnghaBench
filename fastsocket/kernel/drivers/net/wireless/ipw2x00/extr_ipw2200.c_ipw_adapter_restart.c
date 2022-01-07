
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_priv {int status; TYPE_1__* assoc_network; } ;
struct TYPE_2__ {int capability; } ;


 int IPW_ERROR (char*) ;
 int STATUS_RF_KILL_MASK ;
 int WLAN_CAPABILITY_IBSS ;
 int ipw_down (struct ipw_priv*) ;
 int ipw_remove_current_network (struct ipw_priv*) ;
 scalar_t__ ipw_up (struct ipw_priv*) ;

__attribute__((used)) static void ipw_adapter_restart(void *adapter)
{
 struct ipw_priv *priv = adapter;

 if (priv->status & STATUS_RF_KILL_MASK)
  return;

 ipw_down(priv);

 if (priv->assoc_network &&
     (priv->assoc_network->capability & WLAN_CAPABILITY_IBSS))
  ipw_remove_current_network(priv);

 if (ipw_up(priv)) {
  IPW_ERROR("Failed to up device\n");
  return;
 }
}
