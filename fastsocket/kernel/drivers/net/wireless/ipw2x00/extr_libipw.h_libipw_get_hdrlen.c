
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int IEEE80211_FCTL_FROMDS ;
 int IEEE80211_FCTL_TODS ;




 int IEEE80211_STYPE_QOS_DATA ;
 int LIBIPW_1ADDR_LEN ;
 int LIBIPW_2ADDR_LEN ;
 int LIBIPW_3ADDR_LEN ;
 int LIBIPW_4ADDR_LEN ;
 int WLAN_FC_GET_STYPE (int) ;
 int WLAN_FC_GET_TYPE (int) ;

__attribute__((used)) static inline int libipw_get_hdrlen(u16 fc)
{
 int hdrlen = LIBIPW_3ADDR_LEN;
 u16 stype = WLAN_FC_GET_STYPE(fc);

 switch (WLAN_FC_GET_TYPE(fc)) {
 case 130:
  if ((fc & IEEE80211_FCTL_FROMDS) && (fc & IEEE80211_FCTL_TODS))
   hdrlen = LIBIPW_4ADDR_LEN;
  if (stype & IEEE80211_STYPE_QOS_DATA)
   hdrlen += 2;
  break;
 case 131:
  switch (WLAN_FC_GET_STYPE(fc)) {
  case 128:
  case 129:
   hdrlen = LIBIPW_1ADDR_LEN;
   break;
  default:
   hdrlen = LIBIPW_2ADDR_LEN;
   break;
  }
  break;
 }

 return hdrlen;
}
