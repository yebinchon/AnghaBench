
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ WLAN_EID_VENDOR_SPECIFIC ;
 int WPA_OUI_TYPE ;
 int WPA_SELECTOR_LEN ;
 scalar_t__ memcmp (scalar_t__*,int ,int) ;

__attribute__((used)) static inline u8 *orinoco_get_wpa_ie(u8 *data, size_t len)
{
 u8 *p = data;
 while ((p + 2 + WPA_SELECTOR_LEN) < (data + len)) {
  if ((p[0] == WLAN_EID_VENDOR_SPECIFIC) &&
      (memcmp(&p[2], WPA_OUI_TYPE, WPA_SELECTOR_LEN) == 0))
   return p;
  p += p[1] + 2;
 }
 return ((void*)0);
}
