
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clock_event_device {int dummy; } ;


 int DIS ;
 int EN ;
 scalar_t__ REGGET (unsigned long,int ,int ) ;
 int REGSET (unsigned long,int ,int ,int ) ;
 int SYS_TC (int ) ;
 int SYS_TCx ;
 int SYS_TRC (int ) ;
 int TEN ;
 int TIMER_CLOCKEVENT ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static int ns9360_clockevent_setnextevent(unsigned long evt,
  struct clock_event_device *clk)
{
 u32 tc = __raw_readl(SYS_TC(TIMER_CLOCKEVENT));

 if (REGGET(tc, SYS_TCx, TEN)) {
  REGSET(tc, SYS_TCx, TEN, DIS);
  __raw_writel(tc, SYS_TC(TIMER_CLOCKEVENT));
 }

 REGSET(tc, SYS_TCx, TEN, EN);

 __raw_writel(evt, SYS_TRC(TIMER_CLOCKEVENT));

 __raw_writel(tc, SYS_TC(TIMER_CLOCKEVENT));

 return 0;
}
