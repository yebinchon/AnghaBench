
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct uart_port {int lock; TYPE_3__ icount; scalar_t__ sysrq; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
struct TYPE_10__ {int command; int mpc52xx_psc_status; } ;
struct TYPE_9__ {int (* raw_rx_rdy ) (struct uart_port*) ;unsigned char (* read_char ) (struct uart_port*) ;} ;
struct TYPE_6__ {struct tty_struct* tty; } ;
struct TYPE_7__ {TYPE_1__ port; } ;


 int MPC52xx_PSC_RST_ERR_STAT ;
 unsigned short MPC52xx_PSC_SR_FE ;
 unsigned short MPC52xx_PSC_SR_OE ;
 unsigned short MPC52xx_PSC_SR_PE ;
 unsigned short MPC52xx_PSC_SR_RB ;
 TYPE_5__* PSC (struct uart_port*) ;
 unsigned char TTY_BREAK ;
 unsigned char TTY_FRAME ;
 unsigned char TTY_NORMAL ;
 unsigned char TTY_OVERRUN ;
 unsigned char TTY_PARITY ;
 unsigned short in_be16 (int *) ;
 int out_8 (int *,int ) ;
 TYPE_4__* psc_ops ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct uart_port*) ;
 unsigned char stub2 (struct uart_port*) ;
 int stub3 (struct uart_port*) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,unsigned char,unsigned char) ;
 int uart_handle_break (struct uart_port*) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,unsigned char) ;

__attribute__((used)) static inline int
mpc52xx_uart_int_rx_chars(struct uart_port *port)
{
 struct tty_struct *tty = port->state->port.tty;
 unsigned char ch, flag;
 unsigned short status;


 while (psc_ops->raw_rx_rdy(port)) {

  ch = psc_ops->read_char(port);
  flag = TTY_NORMAL;
  port->icount.rx++;

  status = in_be16(&PSC(port)->mpc52xx_psc_status);

  if (status & (MPC52xx_PSC_SR_PE |
         MPC52xx_PSC_SR_FE |
         MPC52xx_PSC_SR_RB)) {

   if (status & MPC52xx_PSC_SR_RB) {
    flag = TTY_BREAK;
    uart_handle_break(port);
    port->icount.brk++;
   } else if (status & MPC52xx_PSC_SR_PE) {
    flag = TTY_PARITY;
    port->icount.parity++;
   }
   else if (status & MPC52xx_PSC_SR_FE) {
    flag = TTY_FRAME;
    port->icount.frame++;
   }


   out_8(&PSC(port)->command, MPC52xx_PSC_RST_ERR_STAT);

  }
  tty_insert_flip_char(tty, ch, flag);
  if (status & MPC52xx_PSC_SR_OE) {





   tty_insert_flip_char(tty, 0, TTY_OVERRUN);
   port->icount.overrun++;
  }
 }

 spin_unlock(&port->lock);
 tty_flip_buffer_push(tty);
 spin_lock(&port->lock);

 return psc_ops->raw_rx_rdy(port);
}
