
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int * variable; } ;
struct TYPE_4__ {TYPE_1__ probe_req; } ;
struct ieee80211_mgmt {TYPE_2__ u; scalar_t__ seq_ctrl; int bssid; int * sa; int da; int frame_control; } ;


 int ETH_ALEN ;
 int IEEE80211_STYPE_PROBE_REQ ;
 scalar_t__ WARN_ON (int) ;
 int WLAN_EID_SSID ;
 int cpu_to_le16 (int ) ;
 int eth_broadcast_addr (int ) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static u16 iwl_mvm_fill_probe_req(struct ieee80211_mgmt *frame, const u8 *ta,
      int n_ssids, const u8 *ssid, int ssid_len,
      const u8 *ie, int ie_len,
      int left)
{
 int len = 0;
 u8 *pos = ((void*)0);



 left -= 24;
 if (left < 0)
  return 0;

 frame->frame_control = cpu_to_le16(IEEE80211_STYPE_PROBE_REQ);
 eth_broadcast_addr(frame->da);
 memcpy(frame->sa, ta, ETH_ALEN);
 eth_broadcast_addr(frame->bssid);
 frame->seq_ctrl = 0;

 len += 24;


 if (n_ssids == 0)
  return (u16)len;


 pos = &frame->u.probe_req.variable[0];


 left -= ssid_len + 2;
 if (left < 0)
  return 0;
 *pos++ = WLAN_EID_SSID;
 *pos++ = ssid_len;
 if (ssid && ssid_len) {
  memcpy(pos, ssid, ssid_len);
  pos += ssid_len;
 }

 len += ssid_len + 2;

 if (WARN_ON(left < ie_len))
  return len;

 if (ie && ie_len) {
  memcpy(pos, ie, ie_len);
  len += ie_len;
 }

 return (u16)len;
}
