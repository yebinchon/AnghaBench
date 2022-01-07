
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;
typedef enum carl9170_bw { ____Placeholder_carl9170_bw } carl9170_bw ;


 int BUG () ;
 int CARL9170_BW_20 ;
 int CARL9170_BW_40_ABOVE ;
 int CARL9170_BW_40_BELOW ;





__attribute__((used)) static enum carl9170_bw nl80211_to_carl(enum nl80211_channel_type type)
{
 switch (type) {
 case 128:
 case 131:
  return CARL9170_BW_20;
 case 130:
  return CARL9170_BW_40_BELOW;
 case 129:
  return CARL9170_BW_40_ABOVE;
 default:
  BUG();
 }
}
