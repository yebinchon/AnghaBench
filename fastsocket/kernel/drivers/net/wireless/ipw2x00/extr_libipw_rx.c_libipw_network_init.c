
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct libipw_rx_stats {scalar_t__ freq; scalar_t__ len; int received_channel; } ;
struct TYPE_4__ {struct libipw_rx_stats* addr3; } ;
struct libipw_probe_response {int info_element; int beacon_interval; int * time_stamp; int capability; TYPE_2__ header; } ;
struct TYPE_3__ {scalar_t__ old_param_count; scalar_t__ param_count; scalar_t__ supported; scalar_t__ active; } ;
struct libipw_network {int capability; int listen_interval; int flags; int erp_value; int stats; int * bssid; scalar_t__ ssid_len; int ssid; int mode; scalar_t__ rsn_ie_len; scalar_t__ wpa_ie_len; int channel; scalar_t__ atim_window; scalar_t__ last_associate; scalar_t__ rates_ex_len; scalar_t__ rates_len; void* beacon_interval; void** time_stamp; int last_scanned; TYPE_1__ qos_data; } ;
struct libipw_device {int dummy; } ;


 int DECLARE_SSID_BUF (int ) ;
 int ETH_ALEN ;
 int IEEE_A ;
 int IEEE_B ;
 int IEEE_G ;
 scalar_t__ LIBIPW_52GHZ_BAND ;
 int LIBIPW_DEBUG_SCAN (char*,int ,int *) ;
 int NETWORK_HAS_CCK ;
 int NETWORK_HAS_OFDM ;
 int WLAN_CAPABILITY_IBSS ;
 int jiffies ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 scalar_t__ libipw_parse_info_param (int ,scalar_t__,struct libipw_network*) ;
 int memcpy (int *,struct libipw_rx_stats*,int) ;
 int print_ssid (int ,int ,scalar_t__) ;
 int ssid ;

__attribute__((used)) static int libipw_network_init(struct libipw_device *ieee, struct libipw_probe_response
      *beacon,
      struct libipw_network *network,
      struct libipw_rx_stats *stats)
{
 DECLARE_SSID_BUF(ssid);

 network->qos_data.active = 0;
 network->qos_data.supported = 0;
 network->qos_data.param_count = 0;
 network->qos_data.old_param_count = 0;


 memcpy(network->bssid, beacon->header.addr3, ETH_ALEN);
 network->capability = le16_to_cpu(beacon->capability);
 network->last_scanned = jiffies;
 network->time_stamp[0] = le32_to_cpu(beacon->time_stamp[0]);
 network->time_stamp[1] = le32_to_cpu(beacon->time_stamp[1]);
 network->beacon_interval = le16_to_cpu(beacon->beacon_interval);

 network->listen_interval = 0x0A;
 network->rates_len = network->rates_ex_len = 0;
 network->last_associate = 0;
 network->ssid_len = 0;
 network->flags = 0;
 network->atim_window = 0;
 network->erp_value = (network->capability & WLAN_CAPABILITY_IBSS) ?
     0x3 : 0x0;

 if (stats->freq == LIBIPW_52GHZ_BAND) {

  network->channel = stats->received_channel;
 } else
  network->flags |= NETWORK_HAS_CCK;

 network->wpa_ie_len = 0;
 network->rsn_ie_len = 0;

 if (libipw_parse_info_param
     (beacon->info_element, stats->len - sizeof(*beacon), network))
  return 1;

 network->mode = 0;
 if (stats->freq == LIBIPW_52GHZ_BAND)
  network->mode = IEEE_A;
 else {
  if (network->flags & NETWORK_HAS_OFDM)
   network->mode |= IEEE_G;
  if (network->flags & NETWORK_HAS_CCK)
   network->mode |= IEEE_B;
 }

 if (network->mode == 0) {
  LIBIPW_DEBUG_SCAN("Filtered out '%s (%pM)' "
         "network.\n",
         print_ssid(ssid, network->ssid,
       network->ssid_len),
         network->bssid);
  return 1;
 }

 memcpy(&network->stats, stats, sizeof(network->stats));

 return 0;
}
