
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct uart_sunsu_port {TYPE_1__ port; } ;
struct tty_struct {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int UART_IIR ;
 int UART_IIR_NO_INT ;
 int UART_LSR ;
 unsigned char UART_LSR_DR ;
 unsigned char UART_LSR_THRE ;
 int check_modem_status (struct uart_sunsu_port*) ;
 struct tty_struct* receive_chars (struct uart_sunsu_port*,unsigned char*) ;
 int serial_in (struct uart_sunsu_port*,int ) ;
 unsigned char serial_inp (struct uart_sunsu_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int transmit_chars (struct uart_sunsu_port*) ;
 int tty_flip_buffer_push (struct tty_struct*) ;

__attribute__((used)) static irqreturn_t sunsu_serial_interrupt(int irq, void *dev_id)
{
 struct uart_sunsu_port *up = dev_id;
 unsigned long flags;
 unsigned char status;

 spin_lock_irqsave(&up->port.lock, flags);

 do {
  struct tty_struct *tty;

  status = serial_inp(up, UART_LSR);
  tty = ((void*)0);
  if (status & UART_LSR_DR)
   tty = receive_chars(up, &status);
  check_modem_status(up);
  if (status & UART_LSR_THRE)
   transmit_chars(up);

  spin_unlock_irqrestore(&up->port.lock, flags);

  if (tty)
   tty_flip_buffer_push(tty);

  spin_lock_irqsave(&up->port.lock, flags);

 } while (!(serial_in(up, UART_IIR) & UART_IIR_NO_INT));

 spin_unlock_irqrestore(&up->port.lock, flags);

 return IRQ_HANDLED;
}
