
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;


 int NL80211_CHAN_HT40MINUS ;
 int NL80211_CHAN_HT40PLUS ;

bool b43_channel_type_is_40mhz(enum nl80211_channel_type channel_type)
{
 return (channel_type == NL80211_CHAN_HT40MINUS ||
  channel_type == NL80211_CHAN_HT40PLUS);
}
