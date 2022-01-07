
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;


 int BUG () ;





 scalar_t__ MTU_IMSC ;
 scalar_t__ mtu_base ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void nmdk_clkevt_mode(enum clock_event_mode mode,
        struct clock_event_device *dev)
{
 unsigned long flags;

 switch (mode) {
 case 131:

  raw_local_irq_save(flags);
  writel(readl(mtu_base + MTU_IMSC) | 1, mtu_base + MTU_IMSC);
  raw_local_irq_restore(flags);
  break;
 case 132:
  BUG();

 case 129:
 case 128:

  raw_local_irq_save(flags);
  writel(readl(mtu_base + MTU_IMSC) & ~1, mtu_base + MTU_IMSC);
  raw_local_irq_restore(flags);
  break;
 case 130:
  break;
 }
}
