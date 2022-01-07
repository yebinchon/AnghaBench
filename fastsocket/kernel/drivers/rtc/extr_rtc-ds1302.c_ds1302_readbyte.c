
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int RTC_CMD_READ ;
 int RTC_IODATA ;
 int RTC_RESET ;
 int RTC_SCLK ;
 unsigned int ds1302_recvbits () ;
 int ds1302_sendbits (unsigned int) ;
 int get_dp () ;
 int set_dp (int) ;

__attribute__((used)) static unsigned int ds1302_readbyte(unsigned int addr)
{
 unsigned int val;

 set_dp(get_dp() & ~(RTC_RESET | RTC_IODATA | RTC_SCLK));

 set_dp(get_dp() | RTC_RESET);
 ds1302_sendbits(((addr & 0x3f) << 1) | RTC_CMD_READ);
 val = ds1302_recvbits();
 set_dp(get_dp() & ~RTC_RESET);

 return val;
}
