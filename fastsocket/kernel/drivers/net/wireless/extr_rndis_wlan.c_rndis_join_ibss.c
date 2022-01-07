
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct usbnet {int net; } ;
struct rndis_wlan_private {struct usbnet* usbdev; } ;
struct net_device {int dummy; } ;
struct ndis_80211_ssid {int essid; int length; } ;
struct ieee80211_channel {int center_freq; } ;
struct TYPE_2__ {struct ieee80211_channel* chan; } ;
struct cfg80211_ibss_params {int ssid_len; int ssid; int bssid; int privacy; TYPE_1__ chandef; } ;
typedef int ssid ;
typedef enum nl80211_auth_type { ____Placeholder_nl80211_auth_type } nl80211_auth_type ;


 int NDIS_80211_INFRA_ADHOC ;
 int NDIS_802_11_LENGTH_SSID ;
 int NL80211_AUTHTYPE_OPEN_SYSTEM ;
 int NL80211_AUTHTYPE_SHARED_KEY ;
 int RNDIS_WLAN_ALG_NONE ;
 int RNDIS_WLAN_ALG_WEP ;
 int RNDIS_WLAN_KEY_MGMT_NONE ;
 int clear_bssid (struct usbnet*) ;
 int cpu_to_le32 (int) ;
 int disassociate (struct usbnet*,int) ;
 int ieee80211_frequency_to_channel (int ) ;
 scalar_t__ is_associated (struct usbnet*) ;
 int is_broadcast_ether_addr (int ) ;
 int is_zero_ether_addr (int ) ;
 int memcpy (int ,int ,int) ;
 int memset (struct ndis_80211_ssid*,int ,int) ;
 int netdev_dbg (int ,char*,int,...) ;
 int set_auth_mode (struct usbnet*,int ,int,int ) ;
 int set_bssid (struct usbnet*,int ) ;
 int set_channel (struct usbnet*,int) ;
 int set_encr_mode (struct usbnet*,int,int) ;
 int set_essid (struct usbnet*,struct ndis_80211_ssid*) ;
 int set_infra_mode (struct usbnet*,int ) ;
 int set_priv_filter (struct usbnet*) ;
 int usbnet_purge_paused_rxq (struct usbnet*) ;
 int usbnet_resume_rx (struct usbnet*) ;
 struct rndis_wlan_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int rndis_join_ibss(struct wiphy *wiphy, struct net_device *dev,
     struct cfg80211_ibss_params *params)
{
 struct rndis_wlan_private *priv = wiphy_priv(wiphy);
 struct usbnet *usbdev = priv->usbdev;
 struct ieee80211_channel *channel = params->chandef.chan;
 struct ndis_80211_ssid ssid;
 enum nl80211_auth_type auth_type;
 int ret, alg, length, chan = -1;

 if (channel)
  chan = ieee80211_frequency_to_channel(channel->center_freq);






 if (params->privacy) {
  auth_type = NL80211_AUTHTYPE_SHARED_KEY;
  alg = RNDIS_WLAN_ALG_WEP;
 } else {
  auth_type = NL80211_AUTHTYPE_OPEN_SYSTEM;
  alg = RNDIS_WLAN_ALG_NONE;
 }

 netdev_dbg(usbdev->net, "cfg80211.join_ibss('%.32s':[%pM]:%d:%d)\n",
     params->ssid, params->bssid, chan, params->privacy);

 if (is_associated(usbdev))
  disassociate(usbdev, 0);

 ret = set_infra_mode(usbdev, NDIS_80211_INFRA_ADHOC);
 if (ret < 0) {
  netdev_dbg(usbdev->net, "join_ibss: set_infra_mode failed, %d\n",
      ret);
  goto err_turn_radio_on;
 }

 ret = set_auth_mode(usbdev, 0, auth_type, RNDIS_WLAN_KEY_MGMT_NONE);
 if (ret < 0) {
  netdev_dbg(usbdev->net, "join_ibss: set_auth_mode failed, %d\n",
      ret);
  goto err_turn_radio_on;
 }

 set_priv_filter(usbdev);

 ret = set_encr_mode(usbdev, alg, RNDIS_WLAN_ALG_NONE);
 if (ret < 0) {
  netdev_dbg(usbdev->net, "join_ibss: set_encr_mode failed, %d\n",
      ret);
  goto err_turn_radio_on;
 }

 if (channel) {
  ret = set_channel(usbdev, chan);
  if (ret < 0) {
   netdev_dbg(usbdev->net, "join_ibss: set_channel failed, %d\n",
       ret);
   goto err_turn_radio_on;
  }
 }

 if (params->bssid && !is_zero_ether_addr(params->bssid) &&
    !is_broadcast_ether_addr(params->bssid)) {
  ret = set_bssid(usbdev, params->bssid);
  if (ret < 0) {
   netdev_dbg(usbdev->net, "join_ibss: set_bssid failed, %d\n",
       ret);
   goto err_turn_radio_on;
  }
 } else
  clear_bssid(usbdev);

 length = params->ssid_len;
 if (length > NDIS_802_11_LENGTH_SSID)
  length = NDIS_802_11_LENGTH_SSID;

 memset(&ssid, 0, sizeof(ssid));
 ssid.length = cpu_to_le32(length);
 memcpy(ssid.essid, params->ssid, length);


 usbnet_purge_paused_rxq(usbdev);
 usbnet_resume_rx(usbdev);

 ret = set_essid(usbdev, &ssid);
 if (ret < 0)
  netdev_dbg(usbdev->net, "join_ibss: set_essid failed, %d\n",
      ret);
 return ret;

err_turn_radio_on:
 disassociate(usbdev, 1);

 return ret;
}
