
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_6__ {scalar_t__ WPA2enabled; scalar_t__ WPAenabled; scalar_t__ wep_enabled; } ;
struct lbs_private {TYPE_1__ secinfo; } ;
struct bss_descriptor {scalar_t__ mode; int capability; int * rsn_ie; int * wpa_ie; } ;


 int LBS_DEB_SCAN ;
 int WLAN_CAPABILITY_PRIVACY ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_scan (char*,int ,int ,...) ;
 int match_bss_dynamic_wep (TYPE_1__*,struct bss_descriptor*) ;
 int match_bss_no_security (TYPE_1__*,struct bss_descriptor*) ;
 int match_bss_static_wep (TYPE_1__*,struct bss_descriptor*) ;
 int match_bss_wpa (TYPE_1__*,struct bss_descriptor*) ;
 int match_bss_wpa2 (TYPE_1__*,struct bss_descriptor*) ;

__attribute__((used)) static int is_network_compatible(struct lbs_private *priv,
     struct bss_descriptor *bss, uint8_t mode)
{
 int matched = 0;

 lbs_deb_enter(LBS_DEB_SCAN);

 if (bss->mode != mode)
  goto done;

 matched = match_bss_no_security(&priv->secinfo, bss);
 if (matched)
  goto done;
 matched = match_bss_static_wep(&priv->secinfo, bss);
 if (matched)
  goto done;
 matched = match_bss_wpa(&priv->secinfo, bss);
 if (matched) {
  lbs_deb_scan("is_network_compatible() WPA: wpa_ie 0x%x "
        "wpa2_ie 0x%x WEP %s WPA %s WPA2 %s "
        "privacy 0x%x\n", bss->wpa_ie[0], bss->rsn_ie[0],
        priv->secinfo.wep_enabled ? "e" : "d",
        priv->secinfo.WPAenabled ? "e" : "d",
        priv->secinfo.WPA2enabled ? "e" : "d",
        (bss->capability & WLAN_CAPABILITY_PRIVACY));
  goto done;
 }
 matched = match_bss_wpa2(&priv->secinfo, bss);
 if (matched) {
  lbs_deb_scan("is_network_compatible() WPA2: wpa_ie 0x%x "
        "wpa2_ie 0x%x WEP %s WPA %s WPA2 %s "
        "privacy 0x%x\n", bss->wpa_ie[0], bss->rsn_ie[0],
        priv->secinfo.wep_enabled ? "e" : "d",
        priv->secinfo.WPAenabled ? "e" : "d",
        priv->secinfo.WPA2enabled ? "e" : "d",
        (bss->capability & WLAN_CAPABILITY_PRIVACY));
  goto done;
 }
 matched = match_bss_dynamic_wep(&priv->secinfo, bss);
 if (matched) {
  lbs_deb_scan("is_network_compatible() dynamic WEP: "
        "wpa_ie 0x%x wpa2_ie 0x%x privacy 0x%x\n",
        bss->wpa_ie[0], bss->rsn_ie[0],
        (bss->capability & WLAN_CAPABILITY_PRIVACY));
  goto done;
 }


 lbs_deb_scan("is_network_compatible() FAILED: wpa_ie 0x%x "
       "wpa2_ie 0x%x WEP %s WPA %s WPA2 %s privacy 0x%x\n",
       bss->wpa_ie[0], bss->rsn_ie[0],
       priv->secinfo.wep_enabled ? "e" : "d",
       priv->secinfo.WPAenabled ? "e" : "d",
       priv->secinfo.WPA2enabled ? "e" : "d",
       (bss->capability & WLAN_CAPABILITY_PRIVACY));

done:
 lbs_deb_leave_args(LBS_DEB_SCAN, "matched: %d", matched);
 return matched;
}
