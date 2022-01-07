
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int AT91_PIT_PIIR ;
 scalar_t__ PIT_CPIV (int) ;
 int PIT_PICNT (int) ;
 int at91_sys_read (int ) ;
 int pit_cnt ;
 int pit_cycle ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;

__attribute__((used)) static cycle_t read_pit_clk(struct clocksource *cs)
{
 unsigned long flags;
 u32 elapsed;
 u32 t;

 raw_local_irq_save(flags);
 elapsed = pit_cnt;
 t = at91_sys_read(AT91_PIT_PIIR);
 raw_local_irq_restore(flags);

 elapsed += PIT_PICNT(t) * pit_cycle;
 elapsed += PIT_CPIV(t);
 return elapsed;
}
