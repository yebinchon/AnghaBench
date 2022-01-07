
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipw2100_priv {int status; int wx_event_work; int security_work; int net_dev; TYPE_1__* ieee; int bssid; int essid_len; int essid; } ;
struct TYPE_2__ {int bssid; } ;


 int DECLARE_SSID_BUF (int ) ;
 int ETH_ALEN ;
 int IPW_DEBUG (int,char*,int ,int ) ;
 int IPW_DEBUG_INFO (char*) ;
 int IPW_DL_ASSOC ;
 int IPW_DL_NOTIF ;
 int IPW_DL_STATE ;
 int STATUS_ASSOCIATED ;
 int STATUS_ASSOCIATING ;
 int STATUS_RUNNING ;
 int STATUS_SECURITY_UPDATED ;
 int STATUS_STOPPING ;
 int memset (int ,int ,int ) ;
 int netif_carrier_off (int ) ;
 int netif_stop_queue (int ) ;
 int print_ssid (int ,int ,int ) ;
 int schedule_delayed_work (int *,int ) ;
 int ssid ;

__attribute__((used)) static void isr_indicate_association_lost(struct ipw2100_priv *priv, u32 status)
{
 DECLARE_SSID_BUF(ssid);

 IPW_DEBUG(IPW_DL_NOTIF | IPW_DL_STATE | IPW_DL_ASSOC,
    "disassociated: '%s' %pM\n",
    print_ssid(ssid, priv->essid, priv->essid_len),
    priv->bssid);

 priv->status &= ~(STATUS_ASSOCIATED | STATUS_ASSOCIATING);

 if (priv->status & STATUS_STOPPING) {
  IPW_DEBUG_INFO("Card is stopping itself, discard ASSN_LOST.\n");
  return;
 }

 memset(priv->bssid, 0, ETH_ALEN);
 memset(priv->ieee->bssid, 0, ETH_ALEN);

 netif_carrier_off(priv->net_dev);
 netif_stop_queue(priv->net_dev);

 if (!(priv->status & STATUS_RUNNING))
  return;

 if (priv->status & STATUS_SECURITY_UPDATED)
  schedule_delayed_work(&priv->security_work, 0);

 schedule_delayed_work(&priv->wx_event_work, 0);
}
