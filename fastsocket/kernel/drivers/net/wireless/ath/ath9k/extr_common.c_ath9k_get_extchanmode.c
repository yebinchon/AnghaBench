
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_channel {int band; } ;
typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;


 int CHANNEL_A_HT20 ;
 int CHANNEL_A_HT40MINUS ;
 int CHANNEL_A_HT40PLUS ;
 int CHANNEL_G_HT20 ;
 int CHANNEL_G_HT40MINUS ;
 int CHANNEL_G_HT40PLUS ;







__attribute__((used)) static u32 ath9k_get_extchanmode(struct ieee80211_channel *chan,
     enum nl80211_channel_type channel_type)
{
 u32 chanmode = 0;

 switch (chan->band) {
 case 133:
  switch (channel_type) {
  case 128:
  case 131:
   chanmode = CHANNEL_G_HT20;
   break;
  case 129:
   chanmode = CHANNEL_G_HT40PLUS;
   break;
  case 130:
   chanmode = CHANNEL_G_HT40MINUS;
   break;
  }
  break;
 case 132:
  switch (channel_type) {
  case 128:
  case 131:
   chanmode = CHANNEL_A_HT20;
   break;
  case 129:
   chanmode = CHANNEL_A_HT40PLUS;
   break;
  case 130:
   chanmode = CHANNEL_A_HT40MINUS;
   break;
  }
  break;
 default:
  break;
 }

 return chanmode;
}
