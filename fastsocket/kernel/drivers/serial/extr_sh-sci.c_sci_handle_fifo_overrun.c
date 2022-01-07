
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {scalar_t__ type; int dev; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
struct TYPE_3__ {struct tty_struct* tty; } ;
struct TYPE_4__ {TYPE_1__ port; } ;


 scalar_t__ PORT_SCIF ;
 int SCIF_ORER ;
 int SCLSR ;
 int TTY_OVERRUN ;
 int dev_notice (int ,char*) ;
 int sci_in (struct uart_port*,int ) ;
 int sci_out (struct uart_port*,int ,int ) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,int ,int ) ;

__attribute__((used)) static inline int sci_handle_fifo_overrun(struct uart_port *port)
{
 struct tty_struct *tty = port->state->port.tty;
 int copied = 0;

 if (port->type != PORT_SCIF)
  return 0;

 if ((sci_in(port, SCLSR) & SCIF_ORER) != 0) {
  sci_out(port, SCLSR, 0);

  tty_insert_flip_char(tty, 0, TTY_OVERRUN);
  tty_flip_buffer_push(tty);

  dev_notice(port->dev, "overrun error\n");
  copied++;
 }

 return copied;
}
