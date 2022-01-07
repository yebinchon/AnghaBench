
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clock_event_device {int dummy; } ;


 int BRIDGE_CAUSE ;
 unsigned long BRIDGE_INT_TIMER1 ;
 unsigned long BRIDGE_INT_TIMER1_CLR ;
 int BRIDGE_MASK ;
 int ETIME ;
 unsigned long TIMER1_EN ;
 unsigned long TIMER1_RELOAD_EN ;
 int TIMER1_VAL ;
 int TIMER_CTRL ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long readl (int ) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static int
orion_clkevt_next_event(unsigned long delta, struct clock_event_device *dev)
{
 unsigned long flags;
 u32 u;

 if (delta == 0)
  return -ETIME;

 local_irq_save(flags);




 writel(BRIDGE_INT_TIMER1_CLR, BRIDGE_CAUSE);

 u = readl(BRIDGE_MASK);
 u |= BRIDGE_INT_TIMER1;
 writel(u, BRIDGE_MASK);




 writel(delta, TIMER1_VAL);




 u = readl(TIMER_CTRL);
 u = (u & ~TIMER1_RELOAD_EN) | TIMER1_EN;
 writel(u, TIMER_CTRL);

 local_irq_restore(flags);

 return 0;
}
