
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_802_11_security {int WPA2enabled; int WPAenabled; int wep_enabled; } ;
struct bss_descriptor {scalar_t__* wpa_ie; scalar_t__* rsn_ie; int capability; } ;


 int WLAN_CAPABILITY_PRIVACY ;
 scalar_t__ WLAN_EID_GENERIC ;
 scalar_t__ WLAN_EID_RSN ;

__attribute__((used)) static inline int match_bss_no_security(struct lbs_802_11_security *secinfo,
     struct bss_descriptor *match_bss)
{
 if (!secinfo->wep_enabled && !secinfo->WPAenabled
     && !secinfo->WPA2enabled
     && match_bss->wpa_ie[0] != WLAN_EID_GENERIC
     && match_bss->rsn_ie[0] != WLAN_EID_RSN
     && !(match_bss->capability & WLAN_CAPABILITY_PRIVACY))
  return 1;
 else
  return 0;
}
