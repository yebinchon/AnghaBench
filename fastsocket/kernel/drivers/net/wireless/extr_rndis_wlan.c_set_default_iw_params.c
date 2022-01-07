
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;


 int NDIS_80211_INFRA_INFRA ;
 int NL80211_AUTHTYPE_OPEN_SYSTEM ;
 int RNDIS_WLAN_ALG_NONE ;
 int RNDIS_WLAN_KEY_MGMT_NONE ;
 int set_auth_mode (struct usbnet*,int ,int ,int ) ;
 int set_encr_mode (struct usbnet*,int ,int ) ;
 int set_infra_mode (struct usbnet*,int ) ;
 int set_priv_filter (struct usbnet*) ;

__attribute__((used)) static void set_default_iw_params(struct usbnet *usbdev)
{
 set_infra_mode(usbdev, NDIS_80211_INFRA_INFRA);
 set_auth_mode(usbdev, 0, NL80211_AUTHTYPE_OPEN_SYSTEM,
      RNDIS_WLAN_KEY_MGMT_NONE);
 set_priv_filter(usbdev);
 set_encr_mode(usbdev, RNDIS_WLAN_ALG_NONE, RNDIS_WLAN_ALG_NONE);
}
