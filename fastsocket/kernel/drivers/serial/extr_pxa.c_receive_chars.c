
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct TYPE_12__ {int read_status_mask; scalar_t__ line; TYPE_4__* cons; TYPE_3__ icount; TYPE_2__* state; } ;
struct uart_pxa_port {int lsr_break_flag; TYPE_5__ port; } ;
struct tty_struct {int dummy; } ;
struct TYPE_11__ {scalar_t__ index; } ;
struct TYPE_8__ {struct tty_struct* tty; } ;
struct TYPE_9__ {TYPE_1__ port; } ;


 unsigned int TTY_BREAK ;
 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_PARITY ;
 int UART_LSR ;
 int UART_LSR_BI ;
 int UART_LSR_DR ;
 int UART_LSR_FE ;
 int UART_LSR_OE ;
 int UART_LSR_PE ;
 int UART_RX ;
 void* serial_in (struct uart_pxa_port*,int ) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 scalar_t__ uart_handle_break (TYPE_5__*) ;
 scalar_t__ uart_handle_sysrq_char (TYPE_5__*,unsigned int) ;
 int uart_insert_char (TYPE_5__*,int,int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void receive_chars(struct uart_pxa_port *up, int *status)
{
 struct tty_struct *tty = up->port.state->port.tty;
 unsigned int ch, flag;
 int max_count = 256;

 do {
  ch = serial_in(up, UART_RX);
  flag = TTY_NORMAL;
  up->port.icount.rx++;

  if (unlikely(*status & (UART_LSR_BI | UART_LSR_PE |
           UART_LSR_FE | UART_LSR_OE))) {



   if (*status & UART_LSR_BI) {
    *status &= ~(UART_LSR_FE | UART_LSR_PE);
    up->port.icount.brk++;






    if (uart_handle_break(&up->port))
     goto ignore_char;
   } else if (*status & UART_LSR_PE)
    up->port.icount.parity++;
   else if (*status & UART_LSR_FE)
    up->port.icount.frame++;
   if (*status & UART_LSR_OE)
    up->port.icount.overrun++;




   *status &= up->port.read_status_mask;
   if (*status & UART_LSR_BI) {
    flag = TTY_BREAK;
   } else if (*status & UART_LSR_PE)
    flag = TTY_PARITY;
   else if (*status & UART_LSR_FE)
    flag = TTY_FRAME;
  }

  if (uart_handle_sysrq_char(&up->port, ch))
   goto ignore_char;

  uart_insert_char(&up->port, *status, UART_LSR_OE, ch, flag);

 ignore_char:
  *status = serial_in(up, UART_LSR);
 } while ((*status & UART_LSR_DR) && (max_count-- > 0));
 tty_flip_buffer_push(tty);
}
