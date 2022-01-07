
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rssi; } ;
struct libipw_network {int capability; scalar_t__ ssid_len; scalar_t__ last_associate; scalar_t__ last_scanned; scalar_t__ channel; int bssid; int ssid; int mode; TYPE_1__ stats; } ;
struct ipw_supported_rates {scalar_t__ num_rates; } ;
struct ipw_priv {int config; scalar_t__ essid_len; scalar_t__ channel; int capability; TYPE_2__* ieee; int bssid; int essid; } ;
struct ipw_network_match {struct libipw_network* network; int rates; } ;
typedef int escaped ;
struct TYPE_5__ {scalar_t__ iw_mode; scalar_t__ scan_age; } ;


 int CAP_PRIVACY_ON ;
 int CFG_STATIC_BSSID ;
 int CFG_STATIC_CHANNEL ;
 int CFG_STATIC_ESSID ;
 int DECLARE_SSID_BUF (int ) ;
 scalar_t__ ETH_ALEN ;
 unsigned long HZ ;
 int IPW_DEBUG_ASSOC (char*,char*,int ,...) ;
 int IW_ESSID_MAX_SIZE ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 int WLAN_CAPABILITY_ESS ;
 int WLAN_CAPABILITY_IBSS ;
 int WLAN_CAPABILITY_PRIVACY ;
 int ipw_compatible_rates (struct ipw_priv*,struct libipw_network*,struct ipw_supported_rates*) ;
 int ipw_copy_rates (int *,struct ipw_supported_rates*) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 int libipw_is_valid_channel (TYPE_2__*,scalar_t__) ;
 int libipw_is_valid_mode (TYPE_2__*,int ) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int print_ssid (int ,int ,scalar_t__) ;
 int ssid ;
 int strncpy (char*,int ,int) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ipw_best_network(struct ipw_priv *priv,
       struct ipw_network_match *match,
       struct libipw_network *network, int roaming)
{
 struct ipw_supported_rates rates;
 DECLARE_SSID_BUF(ssid);



 if ((priv->ieee->iw_mode == IW_MODE_INFRA &&
      !(network->capability & WLAN_CAPABILITY_ESS)) ||
     (priv->ieee->iw_mode == IW_MODE_ADHOC &&
      !(network->capability & WLAN_CAPABILITY_IBSS))) {
  IPW_DEBUG_ASSOC("Network '%s (%pM)' excluded due to "
    "capability mismatch.\n",
    print_ssid(ssid, network->ssid,
        network->ssid_len),
    network->bssid);
  return 0;
 }

 if (unlikely(roaming)) {


  if ((network->ssid_len != match->network->ssid_len) ||
      memcmp(network->ssid, match->network->ssid,
      network->ssid_len)) {
   IPW_DEBUG_ASSOC("Network '%s (%pM)' excluded "
     "because of non-network ESSID.\n",
     print_ssid(ssid, network->ssid,
         network->ssid_len),
     network->bssid);
   return 0;
  }
 } else {


  if ((priv->config & CFG_STATIC_ESSID) &&
      ((network->ssid_len != priv->essid_len) ||
       memcmp(network->ssid, priv->essid,
       min(network->ssid_len, priv->essid_len)))) {
   char escaped[IW_ESSID_MAX_SIZE * 2 + 1];
   strncpy(escaped,
    print_ssid(ssid, network->ssid,
        network->ssid_len),
    sizeof(escaped));
   IPW_DEBUG_ASSOC("Network '%s (%pM)' excluded "
     "because of ESSID mismatch: '%s'.\n",
     escaped, network->bssid,
     print_ssid(ssid, priv->essid,
         priv->essid_len));
   return 0;
  }
 }



 if (match->network && match->network->stats.rssi > network->stats.rssi) {
  char escaped[IW_ESSID_MAX_SIZE * 2 + 1];
  strncpy(escaped,
   print_ssid(ssid, network->ssid, network->ssid_len),
   sizeof(escaped));
  IPW_DEBUG_ASSOC("Network '%s (%pM)' excluded because "
    "'%s (%pM)' has a stronger signal.\n",
    escaped, network->bssid,
    print_ssid(ssid, match->network->ssid,
        match->network->ssid_len),
    match->network->bssid);
  return 0;
 }



 if (network->last_associate &&
     time_after(network->last_associate + (HZ * 3UL), jiffies)) {
  IPW_DEBUG_ASSOC("Network '%s (%pM)' excluded "
    "because of storming (%ums since last "
    "assoc attempt).\n",
    print_ssid(ssid, network->ssid,
        network->ssid_len),
    network->bssid,
    jiffies_to_msecs(jiffies -
       network->last_associate));
  return 0;
 }


 if (priv->ieee->scan_age != 0 &&
     time_after(jiffies, network->last_scanned + priv->ieee->scan_age)) {
  IPW_DEBUG_ASSOC("Network '%s (%pM)' excluded "
    "because of age: %ums.\n",
    print_ssid(ssid, network->ssid,
        network->ssid_len),
    network->bssid,
    jiffies_to_msecs(jiffies -
       network->last_scanned));
  return 0;
 }

 if ((priv->config & CFG_STATIC_CHANNEL) &&
     (network->channel != priv->channel)) {
  IPW_DEBUG_ASSOC("Network '%s (%pM)' excluded "
    "because of channel mismatch: %d != %d.\n",
    print_ssid(ssid, network->ssid,
        network->ssid_len),
    network->bssid,
    network->channel, priv->channel);
  return 0;
 }


 if (((priv->capability & CAP_PRIVACY_ON) ? 1 : 0) !=
     ((network->capability & WLAN_CAPABILITY_PRIVACY) ? 1 : 0)) {
  IPW_DEBUG_ASSOC("Network '%s (%pM)' excluded "
    "because of privacy mismatch: %s != %s.\n",
    print_ssid(ssid, network->ssid,
        network->ssid_len),
    network->bssid,
    priv->capability & CAP_PRIVACY_ON ? "on" :
    "off",
    network->capability &
    WLAN_CAPABILITY_PRIVACY ? "on" : "off");
  return 0;
 }

 if ((priv->config & CFG_STATIC_BSSID) &&
     memcmp(network->bssid, priv->bssid, ETH_ALEN)) {
  IPW_DEBUG_ASSOC("Network '%s (%pM)' excluded "
    "because of BSSID mismatch: %pM.\n",
    print_ssid(ssid, network->ssid,
        network->ssid_len),
    network->bssid, priv->bssid);
  return 0;
 }


 if (!libipw_is_valid_mode(priv->ieee, network->mode)) {
  IPW_DEBUG_ASSOC("Network '%s (%pM)' excluded "
    "because of invalid frequency/mode "
    "combination.\n",
    print_ssid(ssid, network->ssid,
        network->ssid_len),
    network->bssid);
  return 0;
 }


 if (!libipw_is_valid_channel(priv->ieee, network->channel)) {
  IPW_DEBUG_ASSOC("Network '%s (%pM)' excluded "
    "because of invalid channel in current GEO\n",
    print_ssid(ssid, network->ssid,
        network->ssid_len),
    network->bssid);
  return 0;
 }



 if (!ipw_compatible_rates(priv, network, &rates)) {
  IPW_DEBUG_ASSOC("Network '%s (%pM)' excluded "
    "because configured rate mask excludes "
    "AP mandatory rate.\n",
    print_ssid(ssid, network->ssid,
        network->ssid_len),
    network->bssid);
  return 0;
 }

 if (rates.num_rates == 0) {
  IPW_DEBUG_ASSOC("Network '%s (%pM)' excluded "
    "because of no compatible rates.\n",
    print_ssid(ssid, network->ssid,
        network->ssid_len),
    network->bssid);
  return 0;
 }






 ipw_copy_rates(&match->rates, &rates);
 match->network = network;

 IPW_DEBUG_ASSOC("Network '%s (%pM)' is a viable match.\n",
   print_ssid(ssid, network->ssid, network->ssid_len),
   network->bssid);

 return 1;
}
