
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TS_RTC_CTRL ;
 int TS_RTC_DATA ;
 unsigned char readb (int ) ;
 int writeb (unsigned long,int ) ;

__attribute__((used)) static unsigned char ts78xx_ts_rtc_readbyte(unsigned long addr)
{
 writeb(addr, TS_RTC_CTRL);
 return readb(TS_RTC_DATA);
}
