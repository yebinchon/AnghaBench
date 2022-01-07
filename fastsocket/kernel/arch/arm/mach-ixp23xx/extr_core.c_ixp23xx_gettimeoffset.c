
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CLOCK_TICKS_PER_USEC ;
 unsigned long* IXP23XX_TIMER_CONT ;
 unsigned long LATCH ;
 unsigned long next_jiffy_time ;

__attribute__((used)) static unsigned long
ixp23xx_gettimeoffset(void)
{
 unsigned long elapsed;

 elapsed = *IXP23XX_TIMER_CONT - (next_jiffy_time - LATCH);

 return elapsed / CLOCK_TICKS_PER_USEC;
}
