
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;


 int AT91_PIT_MR ;
 int AT91_PIT_PITEN ;
 int AT91_PIT_PITIEN ;
 int AT91_PIT_PIVR ;
 int BUG () ;





 int PIT_PICNT (int ) ;
 int at91_sys_read (int ) ;
 int at91_sys_write (int ,int) ;
 int pit_cnt ;
 int pit_cycle ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;

__attribute__((used)) static void
pit_clkevt_mode(enum clock_event_mode mode, struct clock_event_device *dev)
{
 unsigned long flags;

 switch (mode) {
 case 131:

  raw_local_irq_save(flags);
  pit_cnt += pit_cycle * PIT_PICNT(at91_sys_read(AT91_PIT_PIVR));
  at91_sys_write(AT91_PIT_MR, (pit_cycle - 1) | AT91_PIT_PITEN
    | AT91_PIT_PITIEN);
  raw_local_irq_restore(flags);
  break;
 case 132:
  BUG();

 case 129:
 case 128:

  at91_sys_write(AT91_PIT_MR, (pit_cycle - 1) | AT91_PIT_PITEN);
  break;
 case 130:
  break;
 }
}
