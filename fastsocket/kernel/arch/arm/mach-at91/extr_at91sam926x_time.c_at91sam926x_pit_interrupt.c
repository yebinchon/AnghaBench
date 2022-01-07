
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_3__ {scalar_t__ mode; int (* event_handler ) (TYPE_1__*) ;} ;


 int AT91_PIT_PITS ;
 int AT91_PIT_PIVR ;
 int AT91_PIT_SR ;
 scalar_t__ CLOCK_EVT_MODE_PERIODIC ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int PIT_PICNT (int) ;
 int at91_sys_read (int ) ;
 TYPE_1__ pit_clkevt ;
 int pit_cnt ;
 scalar_t__ pit_cycle ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t at91sam926x_pit_interrupt(int irq, void *dev_id)
{


 if ((pit_clkevt.mode == CLOCK_EVT_MODE_PERIODIC)
   && (at91_sys_read(AT91_PIT_SR) & AT91_PIT_PITS)) {
  unsigned nr_ticks;


  nr_ticks = PIT_PICNT(at91_sys_read(AT91_PIT_PIVR));
  do {
   pit_cnt += pit_cycle;
   pit_clkevt.event_handler(&pit_clkevt);
   nr_ticks--;
  } while (nr_ticks);

  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
