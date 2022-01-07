
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_7__ {int rx; } ;
struct TYPE_8__ {TYPE_3__ icount; TYPE_2__* state; } ;
struct sport_uart_port {TYPE_4__ port; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {struct tty_struct* tty; } ;
struct TYPE_6__ {TYPE_1__ port; } ;


 int IRQ_HANDLED ;
 int RXNE ;
 int SPORT_GET_STAT (struct sport_uart_port*) ;
 int TTY_NORMAL ;
 unsigned int rx_one_byte (struct sport_uart_port*) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,unsigned int,int ) ;
 scalar_t__ uart_handle_sysrq_char (TYPE_4__*,unsigned int) ;

__attribute__((used)) static irqreturn_t sport_uart_rx_irq(int irq, void *dev_id)
{
 struct sport_uart_port *up = dev_id;
 struct tty_struct *tty = up->port.state->port.tty;
 unsigned int ch;

 do {
  ch = rx_one_byte(up);
  up->port.icount.rx++;

  if (uart_handle_sysrq_char(&up->port, ch))
   ;
  else
   tty_insert_flip_char(tty, ch, TTY_NORMAL);
 } while (SPORT_GET_STAT(up) & RXNE);
 tty_flip_buffer_push(tty);

 return IRQ_HANDLED;
}
