
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sunsab_port {int cached_mode; int irqflags; int pvr_dtr_bit; int cached_pvr; } ;
struct uart_port {int dummy; } ;


 int SAB82532_MODE_FRTS ;
 int SAB82532_MODE_RTS ;
 int SAB82532_REGS_PENDING ;
 int SAB82532_XPR ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int set_bit (int ,int *) ;
 int sunsab_tx_idle (struct uart_sunsab_port*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void sunsab_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct uart_sunsab_port *up = (struct uart_sunsab_port *) port;

 if (mctrl & TIOCM_RTS) {
  up->cached_mode &= ~SAB82532_MODE_FRTS;
  up->cached_mode |= SAB82532_MODE_RTS;
 } else {
  up->cached_mode |= (SAB82532_MODE_FRTS |
        SAB82532_MODE_RTS);
 }
 if (mctrl & TIOCM_DTR) {
  up->cached_pvr &= ~(up->pvr_dtr_bit);
 } else {
  up->cached_pvr |= up->pvr_dtr_bit;
 }

 set_bit(SAB82532_REGS_PENDING, &up->irqflags);
 if (test_bit(SAB82532_XPR, &up->irqflags))
  sunsab_tx_idle(up);
}
