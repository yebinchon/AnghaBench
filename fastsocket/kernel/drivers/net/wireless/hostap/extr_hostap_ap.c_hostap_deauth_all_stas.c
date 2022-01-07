
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int name; } ;
struct ap_data {scalar_t__ num_sta; } ;
typedef int __le16 ;


 int DEBUG_AP ;
 int ETH_ALEN ;
 int IEEE80211_FTYPE_MGMT ;
 int IEEE80211_STYPE_DEAUTH ;
 int PDEBUG (int ,char*,int ) ;
 int WLAN_REASON_PREV_AUTH_NOT_VALID ;
 int cpu_to_le16 (int ) ;
 int mdelay (int) ;
 int memset (int *,int,int) ;
 int prism2_send_mgmt (struct net_device*,int,char*,int,int *,int ) ;

void hostap_deauth_all_stas(struct net_device *dev, struct ap_data *ap,
       int resend)
{
 u8 addr[ETH_ALEN];
 __le16 resp;
 int i;

 PDEBUG(DEBUG_AP, "%s: Deauthenticate all stations\n", dev->name);
 memset(addr, 0xff, ETH_ALEN);

 resp = cpu_to_le16(WLAN_REASON_PREV_AUTH_NOT_VALID);





 for (i = 0; i < 5; i++) {
  prism2_send_mgmt(dev, IEEE80211_FTYPE_MGMT |
     IEEE80211_STYPE_DEAUTH,
     (char *) &resp, 2, addr, 0);

  if (!resend || ap->num_sta <= 0)
   return;

  mdelay(50);
 }
}
