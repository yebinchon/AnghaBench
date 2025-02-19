
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int frame; int overrun; int parity; int brk; int rx; } ;
struct uart_port {unsigned char read_status_mask; TYPE_3__* state; TYPE_1__ icount; scalar_t__ membase; } ;
struct mcf_uart {struct uart_port port; } ;
struct TYPE_5__ {int tty; } ;
struct TYPE_6__ {TYPE_2__ port; } ;


 scalar_t__ MCFUART_UCR ;
 int MCFUART_UCR_CMDRESETERR ;
 scalar_t__ MCFUART_URB ;
 scalar_t__ MCFUART_USR ;
 unsigned char MCFUART_USR_RXBREAK ;
 unsigned char MCFUART_USR_RXERR ;
 unsigned char MCFUART_USR_RXFRAMING ;
 unsigned char MCFUART_USR_RXOVERRUN ;
 unsigned char MCFUART_USR_RXPARITY ;
 unsigned char MCFUART_USR_RXREADY ;
 unsigned char TTY_BREAK ;
 unsigned char TTY_FRAME ;
 unsigned char TTY_NORMAL ;
 unsigned char TTY_PARITY ;
 unsigned char readb (scalar_t__) ;
 int tty_flip_buffer_push (int ) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,unsigned char) ;
 int uart_insert_char (struct uart_port*,unsigned char,unsigned char,unsigned char,unsigned char) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void mcf_rx_chars(struct mcf_uart *pp)
{
 struct uart_port *port = &pp->port;
 unsigned char status, ch, flag;

 while ((status = readb(port->membase + MCFUART_USR)) & MCFUART_USR_RXREADY) {
  ch = readb(port->membase + MCFUART_URB);
  flag = TTY_NORMAL;
  port->icount.rx++;

  if (status & MCFUART_USR_RXERR) {
   writeb(MCFUART_UCR_CMDRESETERR,
    port->membase + MCFUART_UCR);

   if (status & MCFUART_USR_RXBREAK) {
    port->icount.brk++;
    if (uart_handle_break(port))
     continue;
   } else if (status & MCFUART_USR_RXPARITY) {
    port->icount.parity++;
   } else if (status & MCFUART_USR_RXOVERRUN) {
    port->icount.overrun++;
   } else if (status & MCFUART_USR_RXFRAMING) {
    port->icount.frame++;
   }

   status &= port->read_status_mask;

   if (status & MCFUART_USR_RXBREAK)
    flag = TTY_BREAK;
   else if (status & MCFUART_USR_RXPARITY)
    flag = TTY_PARITY;
   else if (status & MCFUART_USR_RXFRAMING)
    flag = TTY_FRAME;
  }

  if (uart_handle_sysrq_char(port, ch))
   continue;
  uart_insert_char(port, status, MCFUART_USR_RXOVERRUN, ch, flag);
 }

 tty_flip_buffer_push(port->state->port.tty);
}
