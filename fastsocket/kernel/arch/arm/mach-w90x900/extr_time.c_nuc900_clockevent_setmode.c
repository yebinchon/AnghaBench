
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;







 unsigned int COUNTEN ;
 unsigned int INTEN ;
 unsigned int ONESHOT ;
 unsigned int PERIOD ;
 unsigned int PRESCALE ;
 int REG_TCSR0 ;
 int REG_TICR0 ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;
 unsigned int timer0_load ;

__attribute__((used)) static void nuc900_clockevent_setmode(enum clock_event_mode mode,
  struct clock_event_device *clk)
{
 unsigned int val;

 val = __raw_readl(REG_TCSR0);
 val &= ~(0x03 << 27);

 switch (mode) {
 case 131:
  __raw_writel(timer0_load, REG_TICR0);
  val |= (PERIOD | COUNTEN | INTEN | PRESCALE);
  break;

 case 132:
  val |= (ONESHOT | COUNTEN | INTEN | PRESCALE);
  break;

 case 128:
 case 129:
 case 130:
  break;
 }

 __raw_writel(val, REG_TCSR0);
}
