
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TS_RTC_CTRL ;
 int TS_RTC_DATA ;
 int writeb (unsigned char,int ) ;

__attribute__((used)) static void ts78xx_ts_rtc_writebyte(unsigned char value, unsigned long addr)
{
 writeb(addr, TS_RTC_CTRL);
 writeb(value, TS_RTC_DATA);
}
