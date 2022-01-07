
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct uart_port {int read_status_mask; int ignore_status_mask; TYPE_3__ icount; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;
struct TYPE_5__ {TYPE_1__ port; } ;


 void* READ_SC_PORT (struct uart_port*,int ) ;
 int RHR ;
 int SR ;
 int SR_BREAK ;
 int SR_FRAME ;
 int SR_OVERRUN ;
 int SR_PARITY ;
 int SR_RXRDY ;
 char TTY_BREAK ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_PARITY ;
 int tty_insert_flip_char (struct tty_struct*,unsigned char,char) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,unsigned char) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct tty_struct *receive_chars(struct uart_port *port)
{
 struct tty_struct *tty = ((void*)0);
 int limit = 10000;
 unsigned char ch;
 char flag;
 u8 status;

 if (port->state != ((void*)0))
  tty = port->state->port.tty;

 while (limit-- > 0) {
  status = READ_SC_PORT(port, SR);
  if (!(status & SR_RXRDY))
   break;
  ch = READ_SC_PORT(port, RHR);

  flag = TTY_NORMAL;
  port->icount.rx++;

  if (unlikely(status & (SR_BREAK | SR_FRAME |
           SR_PARITY | SR_OVERRUN))) {
   if (status & SR_BREAK) {
    status &= ~(SR_PARITY | SR_FRAME);
    port->icount.brk++;
    if (uart_handle_break(port))
     continue;
   } else if (status & SR_PARITY)
    port->icount.parity++;
   else if (status & SR_FRAME)
    port->icount.frame++;
   if (status & SR_OVERRUN)
    port->icount.overrun++;

   status &= port->read_status_mask;
   if (status & SR_BREAK)
    flag = TTY_BREAK;
   else if (status & SR_PARITY)
    flag = TTY_PARITY;
   else if (status & SR_FRAME)
    flag = TTY_FRAME;
  }

  if (uart_handle_sysrq_char(port, ch))
   continue;

  if (status & port->ignore_status_mask)
   continue;

  tty_insert_flip_char(tty, ch, flag);
 }
 return tty;
}
