
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct libipw_rx_stats {int dummy; } ;
struct libipw_qos_data {int dummy; } ;
struct TYPE_3__ {int active; int supported; int old_param_count; int param_count; int received_channel; } ;
struct libipw_network {int rates_len; int rates_ex_len; int flags; int wpa_ie_len; int rsn_ie_len; TYPE_1__ qos_data; int ssid; scalar_t__ ssid_len; int last_scanned; TYPE_1__* rsn_ie; TYPE_1__* wpa_ie; int tim; int erp_value; int atim_window; int listen_interval; int beacon_interval; int * time_stamp; int mode; TYPE_1__* rates_ex; TYPE_1__* rates; int capability; TYPE_1__ stats; int channel; int bssid; int ibss_dfs; } ;


 int LIBIPW_DEBUG_QOS (char*,...) ;
 int LIBIPW_DEBUG_SCAN (char*,int ,int ,int ) ;
 int NETWORK_HAS_QOS_MASK ;
 int jiffies ;
 int libipw_network_reset (struct libipw_network*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static void update_network(struct libipw_network *dst,
      struct libipw_network *src)
{
 int qos_active;
 u8 old_param;

 libipw_network_reset(dst);
 dst->ibss_dfs = src->ibss_dfs;






 if (dst->channel == src->stats.received_channel)
  memcpy(&dst->stats, &src->stats,
         sizeof(struct libipw_rx_stats));
 else
  LIBIPW_DEBUG_SCAN("Network %pM info received "
   "off channel (%d vs. %d)\n", src->bssid,
   dst->channel, src->stats.received_channel);

 dst->capability = src->capability;
 memcpy(dst->rates, src->rates, src->rates_len);
 dst->rates_len = src->rates_len;
 memcpy(dst->rates_ex, src->rates_ex, src->rates_ex_len);
 dst->rates_ex_len = src->rates_ex_len;

 dst->mode = src->mode;
 dst->flags = src->flags;
 dst->time_stamp[0] = src->time_stamp[0];
 dst->time_stamp[1] = src->time_stamp[1];

 dst->beacon_interval = src->beacon_interval;
 dst->listen_interval = src->listen_interval;
 dst->atim_window = src->atim_window;
 dst->erp_value = src->erp_value;
 dst->tim = src->tim;

 memcpy(dst->wpa_ie, src->wpa_ie, src->wpa_ie_len);
 dst->wpa_ie_len = src->wpa_ie_len;
 memcpy(dst->rsn_ie, src->rsn_ie, src->rsn_ie_len);
 dst->rsn_ie_len = src->rsn_ie_len;

 dst->last_scanned = jiffies;
 qos_active = src->qos_data.active;
 old_param = dst->qos_data.old_param_count;
 if (dst->flags & NETWORK_HAS_QOS_MASK)
  memcpy(&dst->qos_data, &src->qos_data,
         sizeof(struct libipw_qos_data));
 else {
  dst->qos_data.supported = src->qos_data.supported;
  dst->qos_data.param_count = src->qos_data.param_count;
 }

 if (dst->qos_data.supported == 1) {
  if (dst->ssid_len)
   LIBIPW_DEBUG_QOS
       ("QoS the network %s is QoS supported\n",
        dst->ssid);
  else
   LIBIPW_DEBUG_QOS
       ("QoS the network is QoS supported\n");
 }
 dst->qos_data.active = qos_active;
 dst->qos_data.old_param_count = old_param;


}
