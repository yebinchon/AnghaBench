
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sa_family; int * sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct TYPE_4__ {scalar_t__ ssid_len; int ssid; int bssid; } ;
struct lbs_private {scalar_t__ connect_status; scalar_t__ psstate; TYPE_2__ curbssparams; scalar_t__ numSNRNF; scalar_t__ nextSNRNF; int * rawNF; int * rawSNR; int * RSSI; int * NF; int * SNR; scalar_t__ tx_pending_len; int * currenttxskb; int dev; } ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int IW_ESSID_MAX_SIZE ;
 scalar_t__ LBS_CONNECTED ;
 int LBS_DEB_ASSOC ;
 scalar_t__ LBS_DISCONNECTED ;
 scalar_t__ PS_STATE_FULL_POWER ;
 int SIOCGIWAP ;
 int kfree_skb (int *) ;
 int lbs_deb_cmd (char*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_ps_wakeup (struct lbs_private*,int ) ;
 int memset (int *,int,int) ;
 int msleep_interruptible (int) ;
 int netif_carrier_off (int ) ;
 int netif_stop_queue (int ) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

void lbs_mac_event_disconnected(struct lbs_private *priv)
{
 union iwreq_data wrqu;

 if (priv->connect_status != LBS_CONNECTED)
  return;

 lbs_deb_enter(LBS_DEB_ASSOC);

 memset(wrqu.ap_addr.sa_data, 0x00, ETH_ALEN);
 wrqu.ap_addr.sa_family = ARPHRD_ETHER;






 msleep_interruptible(1000);
 wireless_send_event(priv->dev, SIOCGIWAP, &wrqu, ((void*)0));


 netif_stop_queue(priv->dev);
 netif_carrier_off(priv->dev);


 kfree_skb(priv->currenttxskb);
 priv->currenttxskb = ((void*)0);
 priv->tx_pending_len = 0;


 memset(priv->SNR, 0x00, sizeof(priv->SNR));
 memset(priv->NF, 0x00, sizeof(priv->NF));
 memset(priv->RSSI, 0x00, sizeof(priv->RSSI));
 memset(priv->rawSNR, 0x00, sizeof(priv->rawSNR));
 memset(priv->rawNF, 0x00, sizeof(priv->rawNF));
 priv->nextSNRNF = 0;
 priv->numSNRNF = 0;
 priv->connect_status = LBS_DISCONNECTED;




 memset(&priv->curbssparams.bssid, 0, ETH_ALEN);
 memset(&priv->curbssparams.ssid, 0, IW_ESSID_MAX_SIZE);
 priv->curbssparams.ssid_len = 0;

 if (priv->psstate != PS_STATE_FULL_POWER) {

  lbs_deb_cmd("disconnected, so exit PS mode\n");
  lbs_ps_wakeup(priv, 0);
 }
 lbs_deb_leave(LBS_DEB_ASSOC);
}
