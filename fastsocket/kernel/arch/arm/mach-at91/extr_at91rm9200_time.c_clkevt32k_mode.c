
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;


 int AT91_ST_ALMS ;
 int AT91_ST_IDR ;
 int AT91_ST_IER ;
 int AT91_ST_PIMR ;
 int AT91_ST_PITS ;
 int AT91_ST_RTAR ;
 int AT91_ST_SR ;





 int LATCH ;
 int at91_sys_read (int ) ;
 int at91_sys_write (int ,int) ;
 int irqmask ;
 int last_crtr ;
 int read_CRTR () ;

__attribute__((used)) static void
clkevt32k_mode(enum clock_event_mode mode, struct clock_event_device *dev)
{

 at91_sys_write(AT91_ST_IDR, AT91_ST_PITS | AT91_ST_ALMS);
 (void) at91_sys_read(AT91_ST_SR);

 last_crtr = read_CRTR();
 switch (mode) {
 case 131:

  irqmask = AT91_ST_PITS;
  at91_sys_write(AT91_ST_PIMR, LATCH);
  break;
 case 132:



  irqmask = AT91_ST_ALMS;
  at91_sys_write(AT91_ST_RTAR, last_crtr);
  break;
 case 129:
 case 128:
 case 130:
  irqmask = 0;
  break;
 }
 at91_sys_write(AT91_ST_IER, irqmask);
}
