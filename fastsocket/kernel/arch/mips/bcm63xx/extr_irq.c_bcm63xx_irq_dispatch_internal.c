
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ IRQ_INTERNAL_BASE ;
 int PERF_IRQMASK_REG ;
 int PERF_IRQSTAT_REG ;
 int bcm_perf_readl (int ) ;
 int do_IRQ (scalar_t__) ;

__attribute__((used)) static void bcm63xx_irq_dispatch_internal(void)
{
 u32 pending;
 static int i;

 pending = bcm_perf_readl(PERF_IRQMASK_REG) &
  bcm_perf_readl(PERF_IRQSTAT_REG);

 if (!pending)
  return ;

 while (1) {
  int to_call = i;

  i = (i + 1) & 0x1f;
  if (pending & (1 << to_call)) {
   do_IRQ(to_call + IRQ_INTERNAL_BASE);
   break;
  }
 }
}
