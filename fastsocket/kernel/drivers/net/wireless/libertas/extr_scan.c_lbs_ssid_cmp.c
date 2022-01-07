
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int memcmp (scalar_t__*,scalar_t__*,scalar_t__) ;

int lbs_ssid_cmp(uint8_t *ssid1, uint8_t ssid1_len, uint8_t *ssid2,
   uint8_t ssid2_len)
{
 if (ssid1_len != ssid2_len)
  return -1;

 return memcmp(ssid1, ssid2, ssid1_len);
}
