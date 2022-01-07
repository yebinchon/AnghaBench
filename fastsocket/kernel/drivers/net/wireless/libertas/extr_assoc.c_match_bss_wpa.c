
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_802_11_security {scalar_t__ WPAenabled; int wep_enabled; } ;
struct bss_descriptor {scalar_t__* wpa_ie; } ;


 scalar_t__ WLAN_EID_GENERIC ;

__attribute__((used)) static inline int match_bss_wpa(struct lbs_802_11_security *secinfo,
    struct bss_descriptor *match_bss)
{
 if (!secinfo->wep_enabled && secinfo->WPAenabled
     && (match_bss->wpa_ie[0] == WLAN_EID_GENERIC)


    )
  return 1;
 else
  return 0;
}
