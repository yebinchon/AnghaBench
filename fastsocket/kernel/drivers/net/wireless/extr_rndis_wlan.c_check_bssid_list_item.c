
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndis_80211_bssid_ex {int dummy; } ;



__attribute__((used)) static bool check_bssid_list_item(struct ndis_80211_bssid_ex *bssid,
      int bssid_len, void *buf, int len)
{
 void *buf_end, *bssid_end;

 if (!bssid || bssid_len <= 0 || bssid_len > len)
  return 0;

 buf_end = (char *)buf + len;
 bssid_end = (char *)bssid + bssid_len;

 return (int)(buf_end - bssid_end) >= 0 && (int)(bssid_end - buf) >= 0;
}
