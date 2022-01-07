
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
const char *ath_opmode_to_string(enum nl80211_iftype opmode)
{
 switch (opmode) {
 case 129:
  return "UNSPEC";
 case 137:
  return "ADHOC";
 case 130:
  return "STATION";
 case 136:
  return "AP";
 case 135:
  return "AP-VLAN";
 case 128:
  return "WDS";
 case 133:
  return "MONITOR";
 case 134:
  return "MESH";
 case 132:
  return "P2P-CLIENT";
 case 131:
  return "P2P-GO";
 default:
  return "UNKNOWN";
 }
}
