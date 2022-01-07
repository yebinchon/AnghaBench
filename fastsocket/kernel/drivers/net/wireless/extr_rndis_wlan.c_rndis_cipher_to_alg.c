
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RNDIS_WLAN_ALG_CCMP ;
 int RNDIS_WLAN_ALG_NONE ;
 int RNDIS_WLAN_ALG_TKIP ;
 int RNDIS_WLAN_ALG_WEP ;





__attribute__((used)) static int rndis_cipher_to_alg(u32 cipher)
{
 switch (cipher) {
 default:
  return RNDIS_WLAN_ALG_NONE;
 case 128:
 case 129:
  return RNDIS_WLAN_ALG_WEP;
 case 130:
  return RNDIS_WLAN_ALG_TKIP;
 case 131:
  return RNDIS_WLAN_ALG_CCMP;
 }
}
