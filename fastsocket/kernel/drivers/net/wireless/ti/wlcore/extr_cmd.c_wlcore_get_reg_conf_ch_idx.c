
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;




 int wl1271_error (char*,int) ;

__attribute__((used)) static int wlcore_get_reg_conf_ch_idx(enum ieee80211_band band, u16 ch)
{
 int idx = -1;

 switch (band) {
 case 128:
  if (ch >= 8 && ch <= 16)
   idx = ((ch-8)/4 + 18);
  else if (ch >= 34 && ch <= 64)
   idx = ((ch-34)/2 + 3 + 18);
  else if (ch >= 100 && ch <= 140)
   idx = ((ch-100)/4 + 15 + 18);
  else if (ch >= 149 && ch <= 165)
   idx = ((ch-149)/4 + 26 + 18);
  else
   idx = -1;
  break;
 case 129:
  if (ch >= 1 && ch <= 14)
   idx = ch - 1;
  else
   idx = -1;
  break;
 default:
  wl1271_error("get reg conf ch idx - unknown band: %d",
        (int)band);
 }

 return idx;
}
