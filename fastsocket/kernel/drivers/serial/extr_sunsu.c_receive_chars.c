
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct TYPE_11__ {scalar_t__ line; unsigned char read_status_mask; unsigned char ignore_status_mask; TYPE_4__* cons; TYPE_3__ icount; TYPE_2__* state; } ;
struct uart_sunsu_port {unsigned char lsr_break_flag; TYPE_5__ port; } ;
struct tty_struct {int dummy; } ;
struct TYPE_10__ {scalar_t__ index; } ;
struct TYPE_7__ {struct tty_struct* tty; } ;
struct TYPE_8__ {TYPE_1__ port; } ;


 unsigned char TTY_BREAK ;
 unsigned char TTY_FRAME ;
 unsigned char TTY_NORMAL ;
 unsigned char TTY_OVERRUN ;
 unsigned char TTY_PARITY ;
 int UART_LSR ;
 unsigned char UART_LSR_BI ;
 unsigned char UART_LSR_DR ;
 unsigned char UART_LSR_FE ;
 unsigned char UART_LSR_OE ;
 unsigned char UART_LSR_PE ;
 int UART_RX ;
 unsigned char serial_inp (struct uart_sunsu_port*,int ) ;
 int sun_do_break () ;
 int tty_insert_flip_char (struct tty_struct*,unsigned char,unsigned char) ;
 scalar_t__ uart_handle_break (TYPE_5__*) ;
 scalar_t__ uart_handle_sysrq_char (TYPE_5__*,unsigned char) ;
 scalar_t__ unlikely (unsigned char) ;

__attribute__((used)) static struct tty_struct *
receive_chars(struct uart_sunsu_port *up, unsigned char *status)
{
 struct tty_struct *tty = up->port.state->port.tty;
 unsigned char ch, flag;
 int max_count = 256;
 int saw_console_brk = 0;

 do {
  ch = serial_inp(up, UART_RX);
  flag = TTY_NORMAL;
  up->port.icount.rx++;

  if (unlikely(*status & (UART_LSR_BI | UART_LSR_PE |
           UART_LSR_FE | UART_LSR_OE))) {



   if (*status & UART_LSR_BI) {
    *status &= ~(UART_LSR_FE | UART_LSR_PE);
    up->port.icount.brk++;
    if (up->port.cons != ((void*)0) &&
        up->port.line == up->port.cons->index)
     saw_console_brk = 1;






    if (uart_handle_break(&up->port))
     goto ignore_char;
   } else if (*status & UART_LSR_PE)
    up->port.icount.parity++;
   else if (*status & UART_LSR_FE)
    up->port.icount.frame++;
   if (*status & UART_LSR_OE)
    up->port.icount.overrun++;




   *status &= up->port.read_status_mask;

   if (up->port.cons != ((void*)0) &&
       up->port.line == up->port.cons->index) {

    *status |= up->lsr_break_flag;
    up->lsr_break_flag = 0;
   }

   if (*status & UART_LSR_BI) {
    flag = TTY_BREAK;
   } else if (*status & UART_LSR_PE)
    flag = TTY_PARITY;
   else if (*status & UART_LSR_FE)
    flag = TTY_FRAME;
  }
  if (uart_handle_sysrq_char(&up->port, ch))
   goto ignore_char;
  if ((*status & up->port.ignore_status_mask) == 0)
   tty_insert_flip_char(tty, ch, flag);
  if (*status & UART_LSR_OE)





    tty_insert_flip_char(tty, 0, TTY_OVERRUN);
 ignore_char:
  *status = serial_inp(up, UART_LSR);
 } while ((*status & UART_LSR_DR) && (max_count-- > 0));

 if (saw_console_brk)
  sun_do_break();

 return tty;
}
