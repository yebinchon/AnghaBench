
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct clocksource {int dummy; } ;
typedef scalar_t__ cycle_t ;


 int MCFTIMER_TCN ;
 int TA (int ) ;
 scalar_t__ __raw_readw (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ mcftmr_cnt ;

__attribute__((used)) static cycle_t mcftmr_read_clk(struct clocksource *cs)
{
 unsigned long flags;
 u32 cycles;
 u16 tcn;

 local_irq_save(flags);
 tcn = __raw_readw(TA(MCFTIMER_TCN));
 cycles = mcftmr_cnt;
 local_irq_restore(flags);

 return cycles + tcn;
}
