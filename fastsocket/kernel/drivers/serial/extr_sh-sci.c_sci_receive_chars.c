
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int rx; } ;
struct uart_port {scalar_t__ type; TYPE_3__ icount; int dev; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
struct sci_port {scalar_t__ break_flag; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;
struct TYPE_5__ {TYPE_1__ port; } ;


 scalar_t__ PORT_SCI ;
 int SCxRDR ;
 int SCxSR ;
 unsigned short SCxSR_FER (struct uart_port*) ;
 unsigned short SCxSR_PER (struct uart_port*) ;
 unsigned short SCxSR_RDxF (struct uart_port*) ;
 int SCxSR_RDxF_CLEAR (struct uart_port*) ;
 scalar_t__ STEPFN (char) ;
 unsigned char TTY_FRAME ;
 unsigned char TTY_NORMAL ;
 unsigned char TTY_PARITY ;
 int dev_dbg (int ,char*,char) ;
 int dev_notice (int ,char*) ;
 void* sci_in (struct uart_port*,int ) ;
 int sci_out (struct uart_port*,int ,int ) ;
 int sci_rxroom (struct uart_port*) ;
 int scif_rxroom (struct uart_port*) ;
 struct sci_port* to_sci_port (struct uart_port*) ;
 int tty_buffer_request_room (struct tty_struct*,int) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,char,unsigned char) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,char) ;

__attribute__((used)) static inline void sci_receive_chars(struct uart_port *port)
{
 struct sci_port *sci_port = to_sci_port(port);
 struct tty_struct *tty = port->state->port.tty;
 int i, count, copied = 0;
 unsigned short status;
 unsigned char flag;

 status = sci_in(port, SCxSR);
 if (!(status & SCxSR_RDxF(port)))
  return;

 while (1) {
  if (port->type == PORT_SCI)
   count = sci_rxroom(port);
  else
   count = scif_rxroom(port);


  count = tty_buffer_request_room(tty, count);


  if (count == 0)
   break;

  if (port->type == PORT_SCI) {
   char c = sci_in(port, SCxRDR);
   if (uart_handle_sysrq_char(port, c) ||
       sci_port->break_flag)
    count = 0;
   else
    tty_insert_flip_char(tty, c, TTY_NORMAL);
  } else {
   for (i = 0; i < count; i++) {
    char c = sci_in(port, SCxRDR);
    status = sci_in(port, SCxSR);
    if (uart_handle_sysrq_char(port, c)) {
     count--; i--;
     continue;
    }


    if (status&SCxSR_FER(port)) {
     flag = TTY_FRAME;
     dev_notice(port->dev, "frame error\n");
    } else if (status&SCxSR_PER(port)) {
     flag = TTY_PARITY;
     dev_notice(port->dev, "parity error\n");
    } else
     flag = TTY_NORMAL;

    tty_insert_flip_char(tty, c, flag);
   }
  }

  sci_in(port, SCxSR);
  sci_out(port, SCxSR, SCxSR_RDxF_CLEAR(port));

  copied += count;
  port->icount.rx += count;
 }

 if (copied) {

  tty_flip_buffer_push(tty);
 } else {
  sci_in(port, SCxSR);
  sci_out(port, SCxSR, SCxSR_RDxF_CLEAR(port));
 }
}
