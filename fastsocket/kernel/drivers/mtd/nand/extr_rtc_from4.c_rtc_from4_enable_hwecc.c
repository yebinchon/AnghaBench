
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int BUG () ;



 scalar_t__ RTC_FROM4_RS_ECC_CTL ;
 unsigned short RTC_FROM4_RS_ECC_CTL_CLR ;
 unsigned short RTC_FROM4_RS_ECC_CTL_FD_E ;
 unsigned short RTC_FROM4_RS_ECC_CTL_GEN ;
 scalar_t__ rtc_from4_fio_base ;

__attribute__((used)) static void rtc_from4_enable_hwecc(struct mtd_info *mtd, int mode)
{
 volatile unsigned short *rs_ecc_ctl = (volatile unsigned short *)(rtc_from4_fio_base + RTC_FROM4_RS_ECC_CTL);
 unsigned short status;

 switch (mode) {
 case 130:
  status = RTC_FROM4_RS_ECC_CTL_CLR | RTC_FROM4_RS_ECC_CTL_FD_E;

  *rs_ecc_ctl = status;
  break;

 case 129:
  status = 0x00;

  *rs_ecc_ctl = status;
  break;

 case 128:
  status = RTC_FROM4_RS_ECC_CTL_CLR | RTC_FROM4_RS_ECC_CTL_GEN | RTC_FROM4_RS_ECC_CTL_FD_E;

  *rs_ecc_ctl = status;
  break;

 default:
  BUG();
  break;
 }

}
