
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int rx; int frame; int brk; int overrun; } ;
struct uart_port {unsigned int read_status_mask; TYPE_3__ icount; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;
struct TYPE_5__ {TYPE_1__ port; } ;


 char TTY_BREAK ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_OVERRUN ;
 int UART_CR ;
 int UART_CR_CMD_RESET_ERR ;
 int UART_RF ;
 int UART_SR ;
 int UART_SR_OVERRUN ;
 unsigned int UART_SR_PAR_FRAME_ERR ;
 unsigned int UART_SR_RX_BREAK ;
 unsigned int UART_SR_RX_READY ;
 int msm_read (struct uart_port*,int ) ;
 int msm_write (struct uart_port*,int ,int ) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,unsigned int,char) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 int uart_handle_sysrq_char (struct uart_port*,unsigned int) ;

__attribute__((used)) static void handle_rx(struct uart_port *port)
{
 struct tty_struct *tty = port->state->port.tty;
 unsigned int sr;





 if ((msm_read(port, UART_SR) & UART_SR_OVERRUN)) {
  port->icount.overrun++;
  tty_insert_flip_char(tty, 0, TTY_OVERRUN);
  msm_write(port, UART_CR_CMD_RESET_ERR, UART_CR);
 }


 while ((sr = msm_read(port, UART_SR)) & UART_SR_RX_READY) {
  unsigned int c;
  char flag = TTY_NORMAL;

  c = msm_read(port, UART_RF);

  if (sr & UART_SR_RX_BREAK) {
   port->icount.brk++;
   if (uart_handle_break(port))
    continue;
  } else if (sr & UART_SR_PAR_FRAME_ERR) {
   port->icount.frame++;
  } else {
   port->icount.rx++;
  }


  sr &= port->read_status_mask;

  if (sr & UART_SR_RX_BREAK) {
   flag = TTY_BREAK;
  } else if (sr & UART_SR_PAR_FRAME_ERR) {
   flag = TTY_FRAME;
  }

  if (!uart_handle_sysrq_char(port, c))
   tty_insert_flip_char(tty, c, flag);
 }

 tty_flip_buffer_push(tty);
}
