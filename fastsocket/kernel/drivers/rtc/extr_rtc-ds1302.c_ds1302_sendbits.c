
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTC_IODATA ;
 int RTC_SCLK ;
 int get_dp () ;
 int set_dp (int) ;

__attribute__((used)) static void ds1302_sendbits(unsigned int val)
{
 int i;

 for (i = 8; (i); i--, val >>= 1) {
  set_dp((get_dp() & ~RTC_IODATA) | ((val & 0x1) ?
   RTC_IODATA : 0));
  set_dp(get_dp() | RTC_SCLK);
  set_dp(get_dp() & ~RTC_SCLK);
 }
}
