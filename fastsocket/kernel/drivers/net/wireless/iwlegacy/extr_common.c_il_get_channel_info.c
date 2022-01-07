
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct il_priv {int channel_count; struct il_channel_info const* channel_info; } ;
struct il_channel_info {int channel; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int BUG () ;



const struct il_channel_info *
il_get_channel_info(const struct il_priv *il, enum ieee80211_band band,
      u16 channel)
{
 int i;

 switch (band) {
 case 128:
  for (i = 14; i < il->channel_count; i++) {
   if (il->channel_info[i].channel == channel)
    return &il->channel_info[i];
  }
  break;
 case 129:
  if (channel >= 1 && channel <= 14)
   return &il->channel_info[channel - 1];
  break;
 default:
  BUG();
 }

 return ((void*)0);
}
