
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int DIS ;
 int INTC ;
 int IRQ_HANDLED ;
 int IRQ_NS9360_TIMER0 ;
 scalar_t__ REGGET (int ,int ,int ) ;
 int REGSET (int ,int ,int ,int ) ;
 int REN ;
 int SET ;
 int SYS_TC (int) ;
 int SYS_TCx ;
 scalar_t__ SYS_TCx_REN_DIS ;
 int TEN ;
 int UNSET ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 struct clock_event_device ns9360_clockevent_device ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t ns9360_clockevent_handler(int irq, void *dev_id)
{
 int timerno = irq - IRQ_NS9360_TIMER0;
 u32 tc;

 struct clock_event_device *evt = &ns9360_clockevent_device;


 tc = __raw_readl(SYS_TC(timerno));
 if (REGGET(tc, SYS_TCx, REN) == SYS_TCx_REN_DIS) {
  REGSET(tc, SYS_TCx, TEN, DIS);
  __raw_writel(tc, SYS_TC(timerno));
 }
 REGSET(tc, SYS_TCx, INTC, SET);
 __raw_writel(tc, SYS_TC(timerno));
 REGSET(tc, SYS_TCx, INTC, UNSET);
 __raw_writel(tc, SYS_TC(timerno));

 evt->event_handler(evt);

 return IRQ_HANDLED;
}
