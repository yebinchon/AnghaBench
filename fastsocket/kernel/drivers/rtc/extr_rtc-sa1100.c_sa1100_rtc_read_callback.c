
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned long OSCR ;
 unsigned long OSMR1 ;
 int OSSR ;
 int OSSR_M1 ;
 int RTC_PF ;
 unsigned long rtc_freq ;
 unsigned long timer_freq ;

__attribute__((used)) static int sa1100_rtc_read_callback(struct device *dev, int data)
{
 if (data & RTC_PF) {

  unsigned long period = timer_freq / rtc_freq;
  unsigned long oscr = OSCR;
  unsigned long osmr1 = OSMR1;
  unsigned long missed = (oscr - osmr1)/period;
  data += missed << 8;
  OSSR = OSSR_M1;
  OSMR1 = osmr1 + (missed + 1)*period;




  while( (signed long)((osmr1 = OSMR1) - OSCR) <= 8 ) {
   data += 0x100;
   OSSR = OSSR_M1;
   OSMR1 = osmr1 + period;
  }
 }
 return data;
}
