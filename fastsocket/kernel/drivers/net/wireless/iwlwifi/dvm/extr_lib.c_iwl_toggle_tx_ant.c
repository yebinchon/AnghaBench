
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_priv {scalar_t__ band; scalar_t__ bt_traffic_load; } ;


 int BIT (int) ;
 scalar_t__ IEEE80211_BAND_2GHZ ;
 scalar_t__ IWL_BT_COEX_TRAFFIC_LOAD_HIGH ;
 int RATE_ANT_NUM ;

u8 iwl_toggle_tx_ant(struct iwl_priv *priv, u8 ant, u8 valid)
{
 int i;
 u8 ind = ant;

 if (priv->band == IEEE80211_BAND_2GHZ &&
     priv->bt_traffic_load >= IWL_BT_COEX_TRAFFIC_LOAD_HIGH)
  return 0;

 for (i = 0; i < RATE_ANT_NUM - 1; i++) {
  ind = (ind + 1) < RATE_ANT_NUM ? ind + 1 : 0;
  if (valid & BIT(ind))
   return ind;
 }
 return ant;
}
