
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dev; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
struct sci_port {int break_flag; } ;
struct TYPE_3__ {struct tty_struct* tty; } ;
struct TYPE_4__ {TYPE_1__ port; } ;


 int SCxSR ;
 unsigned short SCxSR_FER (struct uart_port*) ;
 unsigned short SCxSR_ORER (struct uart_port*) ;
 unsigned short SCxSR_PER (struct uart_port*) ;
 int TTY_BREAK ;
 int TTY_FRAME ;
 int TTY_OVERRUN ;
 int TTY_PARITY ;
 int dev_dbg (int ,char*) ;
 int dev_notice (int ,char*) ;
 unsigned short sci_in (struct uart_port*,int ) ;
 scalar_t__ sci_rxd_in (struct uart_port*) ;
 int sci_schedule_break_timer (struct sci_port*) ;
 struct sci_port* to_sci_port (struct uart_port*) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 scalar_t__ tty_insert_flip_char (struct tty_struct*,int ,int ) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;

__attribute__((used)) static inline int sci_handle_errors(struct uart_port *port)
{
 int copied = 0;
 unsigned short status = sci_in(port, SCxSR);
 struct tty_struct *tty = port->state->port.tty;

 if (status & SCxSR_ORER(port)) {

  if (tty_insert_flip_char(tty, 0, TTY_OVERRUN))
   copied++;

  dev_notice(port->dev, "overrun error");
 }

 if (status & SCxSR_FER(port)) {
  if (sci_rxd_in(port) == 0) {

   struct sci_port *sci_port = to_sci_port(port);

   if (!sci_port->break_flag) {
    sci_port->break_flag = 1;
    sci_schedule_break_timer(sci_port);


    if (uart_handle_break(port))
     return 0;

    dev_dbg(port->dev, "BREAK detected\n");

    if (tty_insert_flip_char(tty, 0, TTY_BREAK))
     copied++;
   }

  } else {

   if (tty_insert_flip_char(tty, 0, TTY_FRAME))
    copied++;

   dev_notice(port->dev, "frame error\n");
  }
 }

 if (status & SCxSR_PER(port)) {

  if (tty_insert_flip_char(tty, 0, TTY_PARITY))
   copied++;

  dev_notice(port->dev, "parity error");
 }

 if (copied)
  tty_flip_buffer_push(tty);

 return copied;
}
