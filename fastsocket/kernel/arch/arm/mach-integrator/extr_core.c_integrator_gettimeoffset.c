
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IRQ_RAW_STATUS ;
 int IRQ_TIMERINT1 ;
 unsigned long TICKS2USECS (unsigned long) ;
 scalar_t__ TIMER1_VA_BASE ;
 scalar_t__ TIMER_VALUE ;
 scalar_t__ VA_IC_BASE ;
 unsigned long __raw_readl (scalar_t__) ;
 int readl (scalar_t__) ;
 unsigned long timer_reload ;

unsigned long integrator_gettimeoffset(void)
{
 unsigned long ticks1, ticks2, status;







 ticks2 = readl(TIMER1_VA_BASE + TIMER_VALUE) & 0xffff;
 do {
  ticks1 = ticks2;
  status = __raw_readl(VA_IC_BASE + IRQ_RAW_STATUS);
  ticks2 = readl(TIMER1_VA_BASE + TIMER_VALUE) & 0xffff;
 } while (ticks2 > ticks1);




 ticks1 = timer_reload - ticks2;




 if (status & (1 << IRQ_TIMERINT1))
  ticks1 += timer_reload;




 return TICKS2USECS(ticks1);
}
