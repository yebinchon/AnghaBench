
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



void bfin_get_ether_addr(char *addr)
{

 u32 ret;
 u64 otp_mac;
 u32 (*otp_read)(u32 page, u32 flags, u64 *page_content) = (void *)0xEF00001A;

 ret = otp_read(0xDF, 0x00, &otp_mac);
 if (!(ret & 0x1)) {
  char *otp_mac_p = (char *)&otp_mac;
  for (ret = 0; ret < 6; ++ret)
   addr[ret] = otp_mac_p[5 - ret];
 }
}
