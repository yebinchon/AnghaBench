
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ipw2100_priv {int config; int tx_power; int beacon_interval; TYPE_1__* ieee; int essid_len; int * essid; int * bssid; int rts_threshold; int tx_rates; int channel; } ;
struct TYPE_2__ {scalar_t__ iw_mode; } ;


 int CFG_STATIC_BSSID ;
 int CFG_STATIC_ESSID ;
 int EIO ;
 int IPW_DEBUG_INFO (char*) ;
 int IPW_POWER_MODE_CAM ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_MONITOR ;
 int ipw2100_configure_security (struct ipw2100_priv*,int) ;
 int ipw2100_disable_adapter (struct ipw2100_priv*) ;
 int ipw2100_read_mac_address (struct ipw2100_priv*) ;
 int ipw2100_set_channel (struct ipw2100_priv*,int ,int) ;
 int ipw2100_set_essid (struct ipw2100_priv*,int *,int ,int) ;
 int ipw2100_set_ibss_beacon_interval (struct ipw2100_priv*,int ,int) ;
 int ipw2100_set_mac_address (struct ipw2100_priv*,int) ;
 int ipw2100_set_mandatory_bssid (struct ipw2100_priv*,int *,int) ;
 int ipw2100_set_port_type (struct ipw2100_priv*,scalar_t__,int) ;
 int ipw2100_set_power_mode (struct ipw2100_priv*,int ) ;
 int ipw2100_set_rts_threshold (struct ipw2100_priv*,int ) ;
 int ipw2100_set_tx_power (struct ipw2100_priv*,int ) ;
 int ipw2100_set_tx_rates (struct ipw2100_priv*,int ,int) ;
 int ipw2100_system_config (struct ipw2100_priv*,int) ;

__attribute__((used)) static int ipw2100_adapter_setup(struct ipw2100_priv *priv)
{
 int err;
 int batch_mode = 1;
 u8 *bssid;

 IPW_DEBUG_INFO("enter\n");

 err = ipw2100_disable_adapter(priv);
 if (err)
  return err;
 err = ipw2100_read_mac_address(priv);
 if (err)
  return -EIO;

 err = ipw2100_set_mac_address(priv, batch_mode);
 if (err)
  return err;

 err = ipw2100_set_port_type(priv, priv->ieee->iw_mode, batch_mode);
 if (err)
  return err;

 if (priv->ieee->iw_mode == IW_MODE_ADHOC) {
  err = ipw2100_set_channel(priv, priv->channel, batch_mode);
  if (err)
   return err;
 }

 err = ipw2100_system_config(priv, batch_mode);
 if (err)
  return err;

 err = ipw2100_set_tx_rates(priv, priv->tx_rates, batch_mode);
 if (err)
  return err;


 err = ipw2100_set_power_mode(priv, IPW_POWER_MODE_CAM);
 if (err)
  return err;

 err = ipw2100_set_rts_threshold(priv, priv->rts_threshold);
 if (err)
  return err;

 if (priv->config & CFG_STATIC_BSSID)
  bssid = priv->bssid;
 else
  bssid = ((void*)0);
 err = ipw2100_set_mandatory_bssid(priv, bssid, batch_mode);
 if (err)
  return err;

 if (priv->config & CFG_STATIC_ESSID)
  err = ipw2100_set_essid(priv, priv->essid, priv->essid_len,
     batch_mode);
 else
  err = ipw2100_set_essid(priv, ((void*)0), 0, batch_mode);
 if (err)
  return err;

 err = ipw2100_configure_security(priv, batch_mode);
 if (err)
  return err;

 if (priv->ieee->iw_mode == IW_MODE_ADHOC) {
  err =
      ipw2100_set_ibss_beacon_interval(priv,
           priv->beacon_interval,
           batch_mode);
  if (err)
   return err;

  err = ipw2100_set_tx_power(priv, priv->tx_power);
  if (err)
   return err;
 }
 IPW_DEBUG_INFO("exit\n");

 return 0;
}
