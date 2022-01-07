
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statistics_rx_non_phy {int beacon_silence_rssi_c; int beacon_silence_rssi_b; int beacon_silence_rssi_a; } ;
struct TYPE_2__ {struct statistics_rx_non_phy rx_non_phy; } ;
struct iwl_priv {TYPE_1__ statistics; } ;


 int IN_BAND_FILTER ;
 int IWL_DEBUG_CALIB (struct iwl_priv*,char*,int,int,int,int) ;
 int IWL_NOISE_MEAS_NOT_AVAILABLE ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void iwlagn_rx_calc_noise(struct iwl_priv *priv)
{
 struct statistics_rx_non_phy *rx_info;
 int num_active_rx = 0;
 int total_silence = 0;
 int bcn_silence_a, bcn_silence_b, bcn_silence_c;
 int last_rx_noise;

 rx_info = &priv->statistics.rx_non_phy;

 bcn_silence_a =
  le32_to_cpu(rx_info->beacon_silence_rssi_a) & IN_BAND_FILTER;
 bcn_silence_b =
  le32_to_cpu(rx_info->beacon_silence_rssi_b) & IN_BAND_FILTER;
 bcn_silence_c =
  le32_to_cpu(rx_info->beacon_silence_rssi_c) & IN_BAND_FILTER;

 if (bcn_silence_a) {
  total_silence += bcn_silence_a;
  num_active_rx++;
 }
 if (bcn_silence_b) {
  total_silence += bcn_silence_b;
  num_active_rx++;
 }
 if (bcn_silence_c) {
  total_silence += bcn_silence_c;
  num_active_rx++;
 }


 if (num_active_rx)
  last_rx_noise = (total_silence / num_active_rx) - 107;
 else
  last_rx_noise = IWL_NOISE_MEAS_NOT_AVAILABLE;

 IWL_DEBUG_CALIB(priv, "inband silence a %u, b %u, c %u, dBm %d\n",
   bcn_silence_a, bcn_silence_b, bcn_silence_c,
   last_rx_noise);
}
