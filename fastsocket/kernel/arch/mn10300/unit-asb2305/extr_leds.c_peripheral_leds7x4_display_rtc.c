
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int RTMCR ;
 int RTSCR ;
 int peripheral_leds7x4_display_minssecs (unsigned int,int ) ;

void peripheral_leds7x4_display_rtc(void)
{
 unsigned int clock;
 u8 mins, secs;

 mins = RTMCR;
 secs = RTSCR;

 clock = ((mins & 0xf0) >> 4);
 clock *= 10;
 clock += (mins & 0x0f);
 clock *= 6;

 clock += ((secs & 0xf0) >> 4);
 clock *= 10;
 clock += (secs & 0x0f);

 peripheral_leds7x4_display_minssecs(clock, 0);
}
