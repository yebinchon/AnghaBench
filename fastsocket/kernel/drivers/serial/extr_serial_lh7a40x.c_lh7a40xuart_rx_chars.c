
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct uart_port {int read_status_mask; TYPE_3__ icount; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;
struct TYPE_5__ {TYPE_1__ port; } ;


 unsigned int RxBreak ;
 unsigned int RxError ;
 unsigned int RxFramingError ;
 unsigned int RxOverrunError ;
 unsigned int RxParityError ;
 unsigned int TTY_BREAK ;
 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_PARITY ;
 int UART_R_DATA ;
 int UART_R_STATUS ;
 unsigned int UR (struct uart_port*,int ) ;
 unsigned int nRxRdy ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,unsigned char) ;
 int uart_insert_char (struct uart_port*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static void lh7a40xuart_rx_chars (struct uart_port* port)
{
 struct tty_struct* tty = port->state->port.tty;
 int cbRxMax = 256;
 unsigned int data;
 unsigned int flag;

 while (!(UR (port, UART_R_STATUS) & nRxRdy) && --cbRxMax) {
  data = UR (port, UART_R_DATA);
  flag = TTY_NORMAL;
  ++port->icount.rx;

  if (unlikely(data & RxError)) {
   if (data & RxBreak) {
    data &= ~(RxFramingError | RxParityError);
    ++port->icount.brk;
    if (uart_handle_break (port))
     continue;
   }
   else if (data & RxParityError)
    ++port->icount.parity;
   else if (data & RxFramingError)
    ++port->icount.frame;
   if (data & RxOverrunError)
    ++port->icount.overrun;


   data &= port->read_status_mask | 0xff;

   if (data & RxBreak)
    flag = TTY_BREAK;
   else if (data & RxParityError)
    flag = TTY_PARITY;
   else if (data & RxFramingError)
    flag = TTY_FRAME;
  }

  if (uart_handle_sysrq_char (port, (unsigned char) data))
   continue;

  uart_insert_char(port, data, RxOverrunError, data, flag);
 }
 tty_flip_buffer_push (tty);
 return;
}
