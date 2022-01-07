
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ipw_priv {scalar_t__ channel; int status; TYPE_1__* ieee; int config; } ;
struct TYPE_2__ {scalar_t__ iw_mode; } ;


 int CFG_STATIC_CHANNEL ;
 int IPW_DEBUG_ASSOC (char*) ;
 int IPW_DEBUG_INFO (char*,...) ;
 int IPW_DEBUG_SCAN (char*,...) ;
 scalar_t__ IW_MODE_MONITOR ;
 int STATUS_SCANNING ;
 int ipw_abort_scan (struct ipw_priv*) ;
 int ipw_associate (struct ipw_priv*) ;
 int ipw_disassociate (struct ipw_priv*) ;
 int udelay (int) ;

__attribute__((used)) static int ipw_set_channel(struct ipw_priv *priv, u8 channel)
{
 if (channel == 0) {
  IPW_DEBUG_INFO("Setting channel to ANY (0)\n");
  priv->config &= ~CFG_STATIC_CHANNEL;
  IPW_DEBUG_ASSOC("Attempting to associate with new "
    "parameters.\n");
  ipw_associate(priv);
  return 0;
 }

 priv->config |= CFG_STATIC_CHANNEL;

 if (priv->channel == channel) {
  IPW_DEBUG_INFO("Request to set channel to current value (%d)\n",
          channel);
  return 0;
 }

 IPW_DEBUG_INFO("Setting channel to %i\n", (int)channel);
 priv->channel = channel;
 IPW_DEBUG_ASSOC("[re]association triggered due to channel change.\n");
 if (!ipw_disassociate(priv))
  ipw_associate(priv);

 return 0;
}
