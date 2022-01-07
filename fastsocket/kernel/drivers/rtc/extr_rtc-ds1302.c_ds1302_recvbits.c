
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTC_IODATA ;
 int RTC_SCLK ;
 int get_dp () ;
 int set_dp (int) ;

__attribute__((used)) static unsigned int ds1302_recvbits(void)
{
 unsigned int val;
 int i;

 for (i = 0, val = 0; (i < 8); i++) {
  val |= (((get_dp() & RTC_IODATA) ? 1 : 0) << i);
  set_dp(get_dp() | RTC_SCLK);
  set_dp(get_dp() & ~RTC_SCLK);
 }

 return val;
}
