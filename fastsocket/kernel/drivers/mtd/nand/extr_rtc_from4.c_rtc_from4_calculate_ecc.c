
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int dummy; } ;


 scalar_t__ RTC_FROM4_RS_ECCN ;
 scalar_t__ rtc_from4_fio_base ;

__attribute__((used)) static void rtc_from4_calculate_ecc(struct mtd_info *mtd, const u_char *dat, u_char *ecc_code)
{
 volatile unsigned short *rs_eccn = (volatile unsigned short *)(rtc_from4_fio_base + RTC_FROM4_RS_ECCN);
 unsigned short value;
 int i;

 for (i = 0; i < 8; i++) {
  value = *rs_eccn;
  ecc_code[i] = (unsigned char)value;
  rs_eccn++;
 }
 ecc_code[7] |= 0x0f;
}
