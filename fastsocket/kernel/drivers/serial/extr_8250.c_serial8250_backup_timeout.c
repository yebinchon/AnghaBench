
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int timeout; int irq; scalar_t__ x_char; TYPE_1__* state; int lock; } ;
struct uart_8250_port {unsigned int lsr_saved_flags; int ier; TYPE_2__ port; int timer; } ;
struct TYPE_3__ {int xmit; } ;


 int HZ ;
 unsigned int LSR_SAVE_FLAGS ;
 int UART_IER ;
 int UART_IER_THRI ;
 int UART_IIR ;
 unsigned int UART_IIR_ID ;
 unsigned int UART_IIR_NO_INT ;
 unsigned int UART_IIR_THRI ;
 int UART_LSR ;
 unsigned int UART_LSR_THRE ;
 scalar_t__ is_real_interrupt (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ poll_timeout (int ) ;
 int serial8250_handle_port (struct uart_8250_port*) ;
 unsigned int serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uart_circ_empty (int *) ;

__attribute__((used)) static void serial8250_backup_timeout(unsigned long data)
{
 struct uart_8250_port *up = (struct uart_8250_port *)data;
 unsigned int iir, ier = 0, lsr;
 unsigned long flags;





 if (is_real_interrupt(up->port.irq)) {
  ier = serial_in(up, UART_IER);
  serial_out(up, UART_IER, 0);
 }

 iir = serial_in(up, UART_IIR);







 spin_lock_irqsave(&up->port.lock, flags);
 lsr = serial_in(up, UART_LSR);
 up->lsr_saved_flags |= lsr & LSR_SAVE_FLAGS;
 spin_unlock_irqrestore(&up->port.lock, flags);
 if ((iir & UART_IIR_NO_INT) && (up->ier & UART_IER_THRI) &&
     (!uart_circ_empty(&up->port.state->xmit) || up->port.x_char) &&
     (lsr & UART_LSR_THRE)) {
  iir &= ~(UART_IIR_ID | UART_IIR_NO_INT);
  iir |= UART_IIR_THRI;
 }

 if (!(iir & UART_IIR_NO_INT))
  serial8250_handle_port(up);

 if (is_real_interrupt(up->port.irq))
  serial_out(up, UART_IER, ier);


 mod_timer(&up->timer,
  jiffies + poll_timeout(up->port.timeout) + HZ / 5);
}
