
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_802_11_security {int WPA2enabled; int WPAenabled; scalar_t__ wep_enabled; } ;
struct bss_descriptor {int capability; } ;


 int WLAN_CAPABILITY_PRIVACY ;

__attribute__((used)) static inline int match_bss_static_wep(struct lbs_802_11_security *secinfo,
           struct bss_descriptor *match_bss)
{
 if (secinfo->wep_enabled && !secinfo->WPAenabled
     && !secinfo->WPA2enabled
     && (match_bss->capability & WLAN_CAPABILITY_PRIVACY))
  return 1;
 else
  return 0;
}
