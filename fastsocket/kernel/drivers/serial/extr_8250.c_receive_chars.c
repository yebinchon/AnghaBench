
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct TYPE_10__ {unsigned char read_status_mask; int lock; TYPE_3__ icount; TYPE_2__* state; } ;
struct uart_8250_port {unsigned char lsr_saved_flags; TYPE_4__ port; } ;
struct tty_struct {int dummy; } ;
struct TYPE_7__ {struct tty_struct* tty; } ;
struct TYPE_8__ {TYPE_1__ port; } ;


 int DEBUG_INTR (char*) ;
 char TTY_BREAK ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_PARITY ;
 int UART_LSR ;
 unsigned char UART_LSR_BI ;
 unsigned char UART_LSR_BRK_ERROR_BITS ;
 unsigned char UART_LSR_DR ;
 unsigned char UART_LSR_FE ;
 unsigned char UART_LSR_OE ;
 unsigned char UART_LSR_PE ;
 int UART_RX ;
 scalar_t__ likely (unsigned char) ;
 unsigned char serial_inp (struct uart_8250_port*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 scalar_t__ uart_handle_break (TYPE_4__*) ;
 scalar_t__ uart_handle_sysrq_char (TYPE_4__*,unsigned char) ;
 int uart_insert_char (TYPE_4__*,unsigned char,unsigned char,unsigned char,char) ;
 scalar_t__ unlikely (unsigned char) ;

__attribute__((used)) static void
receive_chars(struct uart_8250_port *up, unsigned int *status)
{
 struct tty_struct *tty = up->port.state->port.tty;
 unsigned char ch, lsr = *status;
 int max_count = 256;
 char flag;

 do {
  if (likely(lsr & UART_LSR_DR))
   ch = serial_inp(up, UART_RX);
  else







   ch = 0;

  flag = TTY_NORMAL;
  up->port.icount.rx++;

  lsr |= up->lsr_saved_flags;
  up->lsr_saved_flags = 0;

  if (unlikely(lsr & UART_LSR_BRK_ERROR_BITS)) {



   if (lsr & UART_LSR_BI) {
    lsr &= ~(UART_LSR_FE | UART_LSR_PE);
    up->port.icount.brk++;






    if (uart_handle_break(&up->port))
     goto ignore_char;
   } else if (lsr & UART_LSR_PE)
    up->port.icount.parity++;
   else if (lsr & UART_LSR_FE)
    up->port.icount.frame++;
   if (lsr & UART_LSR_OE)
    up->port.icount.overrun++;




   lsr &= up->port.read_status_mask;

   if (lsr & UART_LSR_BI) {
    DEBUG_INTR("handling break....");
    flag = TTY_BREAK;
   } else if (lsr & UART_LSR_PE)
    flag = TTY_PARITY;
   else if (lsr & UART_LSR_FE)
    flag = TTY_FRAME;
  }
  if (uart_handle_sysrq_char(&up->port, ch))
   goto ignore_char;

  uart_insert_char(&up->port, lsr, UART_LSR_OE, ch, flag);

ignore_char:
  lsr = serial_inp(up, UART_LSR);
 } while ((lsr & (UART_LSR_DR | UART_LSR_BI)) && (max_count-- > 0));
 spin_unlock(&up->port.lock);
 tty_flip_buffer_push(tty);
 spin_lock(&up->port.lock);
 *status = lsr;
}
