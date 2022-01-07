
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int irqreturn_t ;
struct TYPE_4__ {int (* event_handler ) (TYPE_1__*) ;} ;


 int AT91_ST_ALMS ;
 int AT91_ST_CRTV ;
 int AT91_ST_PITS ;
 int AT91_ST_SR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LATCH ;
 int at91_sys_read (int ) ;
 TYPE_1__ clkevt ;
 int irqmask ;
 int last_crtr ;
 int read_CRTR () ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t at91rm9200_timer_interrupt(int irq, void *dev_id)
{
 u32 sr = at91_sys_read(AT91_ST_SR) & irqmask;


 if (sr & AT91_ST_ALMS) {
  clkevt.event_handler(&clkevt);
  return IRQ_HANDLED;
 }


 if (sr & AT91_ST_PITS) {
  u32 crtr = read_CRTR();

  while (((crtr - last_crtr) & AT91_ST_CRTV) >= LATCH) {
   last_crtr += LATCH;
   clkevt.event_handler(&clkevt);
  }
  return IRQ_HANDLED;
 }


 return IRQ_NONE;
}
