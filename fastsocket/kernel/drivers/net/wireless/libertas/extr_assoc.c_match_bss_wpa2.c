
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_802_11_security {scalar_t__ WPA2enabled; int wep_enabled; } ;
struct bss_descriptor {scalar_t__* rsn_ie; } ;


 scalar_t__ WLAN_EID_RSN ;

__attribute__((used)) static inline int match_bss_wpa2(struct lbs_802_11_security *secinfo,
     struct bss_descriptor *match_bss)
{
 if (!secinfo->wep_enabled && secinfo->WPA2enabled &&
     (match_bss->rsn_ie[0] == WLAN_EID_RSN)


    )
  return 1;
 else
  return 0;
}
