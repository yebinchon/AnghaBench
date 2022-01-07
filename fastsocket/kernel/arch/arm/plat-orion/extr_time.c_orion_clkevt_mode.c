
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;


 int BRIDGE_CAUSE ;
 int BRIDGE_INT_TIMER1 ;
 int BRIDGE_INT_TIMER1_CLR ;
 int BRIDGE_MASK ;
 int CLOCK_EVT_MODE_PERIODIC ;
 int TIMER1_EN ;
 int TIMER1_RELOAD ;
 int TIMER1_RELOAD_EN ;
 int TIMER1_VAL ;
 int TIMER_CTRL ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int readl (int ) ;
 int ticks_per_jiffy ;
 int writel (int,int ) ;

__attribute__((used)) static void
orion_clkevt_mode(enum clock_event_mode mode, struct clock_event_device *dev)
{
 unsigned long flags;
 u32 u;

 local_irq_save(flags);
 if (mode == CLOCK_EVT_MODE_PERIODIC) {



  writel(ticks_per_jiffy - 1, TIMER1_RELOAD);
  writel(ticks_per_jiffy - 1, TIMER1_VAL);




  u = readl(BRIDGE_MASK);
  writel(u | BRIDGE_INT_TIMER1, BRIDGE_MASK);




  u = readl(TIMER_CTRL);
  writel(u | TIMER1_EN | TIMER1_RELOAD_EN, TIMER_CTRL);
 } else {



  u = readl(TIMER_CTRL);
  writel(u & ~TIMER1_EN, TIMER_CTRL);




  u = readl(BRIDGE_MASK);
  writel(u & ~BRIDGE_INT_TIMER1, BRIDGE_MASK);




  writel(BRIDGE_INT_TIMER1_CLR, BRIDGE_CAUSE);

 }
 local_irq_restore(flags);
}
