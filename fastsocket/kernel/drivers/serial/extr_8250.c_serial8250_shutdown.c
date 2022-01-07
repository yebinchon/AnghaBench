
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_3__ {int flags; int iobase; int irq; int lock; int mctrl; } ;
struct TYPE_4__ {int function; } ;
struct uart_8250_port {TYPE_1__ port; TYPE_2__ timer; scalar_t__ ier; } ;


 int TIOCM_OUT1 ;
 int TIOCM_OUT2 ;
 int UART_IER ;
 int UART_LCR ;
 int UART_LCR_SBC ;
 int UART_RX ;
 int UPF_FOURPORT ;
 int del_timer_sync (TYPE_2__*) ;
 int disable_rsa (struct uart_8250_port*) ;
 int inb (int) ;
 scalar_t__ is_real_interrupt (int ) ;
 int serial8250_clear_fifos (struct uart_8250_port*) ;
 int serial8250_set_mctrl (TYPE_1__*,int ) ;
 int serial8250_timeout ;
 int serial_in (struct uart_8250_port*,int ) ;
 int serial_inp (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,int) ;
 int serial_outp (struct uart_8250_port*,int ,int ) ;
 int serial_unlink_irq_chain (struct uart_8250_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void serial8250_shutdown(struct uart_port *port)
{
 struct uart_8250_port *up = (struct uart_8250_port *)port;
 unsigned long flags;




 up->ier = 0;
 serial_outp(up, UART_IER, 0);

 spin_lock_irqsave(&up->port.lock, flags);
 if (up->port.flags & UPF_FOURPORT) {

  inb((up->port.iobase & 0xfe0) | 0x1f);
  up->port.mctrl |= TIOCM_OUT1;
 } else
  up->port.mctrl &= ~TIOCM_OUT2;

 serial8250_set_mctrl(&up->port, up->port.mctrl);
 spin_unlock_irqrestore(&up->port.lock, flags);




 serial_out(up, UART_LCR, serial_inp(up, UART_LCR) & ~UART_LCR_SBC);
 serial8250_clear_fifos(up);
 (void) serial_in(up, UART_RX);

 del_timer_sync(&up->timer);
 up->timer.function = serial8250_timeout;
 if (is_real_interrupt(up->port.irq))
  serial_unlink_irq_chain(up);
}
