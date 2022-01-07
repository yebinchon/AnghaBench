
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndis_80211_bssid_ex {int length; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static struct ndis_80211_bssid_ex *next_bssid_list_item(
     struct ndis_80211_bssid_ex *bssid,
     int *bssid_len, void *buf, int len)
{
 void *buf_end, *bssid_end;

 buf_end = (char *)buf + len;
 bssid_end = (char *)bssid + *bssid_len;

 if ((int)(buf_end - bssid_end) < sizeof(bssid->length)) {
  *bssid_len = 0;
  return ((void*)0);
 } else {
  bssid = (void *)((char *)bssid + *bssid_len);
  *bssid_len = le32_to_cpu(bssid->length);
  return bssid;
 }
}
