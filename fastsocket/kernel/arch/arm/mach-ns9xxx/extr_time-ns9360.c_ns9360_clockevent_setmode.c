
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;







 int DIS ;
 int EN ;
 int INTS ;
 int REGSET (int ,int ,int ,int ) ;
 int REN ;
 int SYS_TC (int ) ;
 int SYS_TCx ;
 int SYS_TRC (int ) ;
 int TEN ;
 int TIMER_CLOCKEVENT ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 int latch ;

__attribute__((used)) static void ns9360_clockevent_setmode(enum clock_event_mode mode,
  struct clock_event_device *clk)
{
 u32 tc = __raw_readl(SYS_TC(TIMER_CLOCKEVENT));

 switch (mode) {
 case 131:
  __raw_writel(latch, SYS_TRC(TIMER_CLOCKEVENT));
  REGSET(tc, SYS_TCx, REN, EN);
  REGSET(tc, SYS_TCx, INTS, EN);
  REGSET(tc, SYS_TCx, TEN, EN);
  break;

 case 132:
  REGSET(tc, SYS_TCx, REN, DIS);
  REGSET(tc, SYS_TCx, INTS, EN);



 case 128:
 case 129:
 case 130:
 default:
  REGSET(tc, SYS_TCx, TEN, DIS);
  break;
 }

 __raw_writel(tc, SYS_TC(TIMER_CLOCKEVENT));
}
