
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int frame; int overrun; int parity; int rx; } ;
struct uart_port {int ignore_status_mask; int read_status_mask; TYPE_3__ icount; scalar_t__ membase; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;
struct TYPE_5__ {TYPE_1__ port; } ;


 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_OVERRUN ;
 char TTY_PARITY ;
 scalar_t__ ULITE_RX ;
 int ULITE_STATUS_FRAME ;
 int ULITE_STATUS_OVERRUN ;
 int ULITE_STATUS_PARITY ;
 int ULITE_STATUS_RXVALID ;
 unsigned char readb (scalar_t__) ;
 int tty_insert_flip_char (struct tty_struct*,unsigned char,char) ;

__attribute__((used)) static int ulite_receive(struct uart_port *port, int stat)
{
 struct tty_struct *tty = port->state->port.tty;
 unsigned char ch = 0;
 char flag = TTY_NORMAL;

 if ((stat & (ULITE_STATUS_RXVALID | ULITE_STATUS_OVERRUN
       | ULITE_STATUS_FRAME)) == 0)
  return 0;


 if (stat & ULITE_STATUS_RXVALID) {
  port->icount.rx++;
  ch = readb(port->membase + ULITE_RX);

  if (stat & ULITE_STATUS_PARITY)
   port->icount.parity++;
 }

 if (stat & ULITE_STATUS_OVERRUN)
  port->icount.overrun++;

 if (stat & ULITE_STATUS_FRAME)
  port->icount.frame++;



 if (stat & port->ignore_status_mask & ULITE_STATUS_PARITY)
  stat &= ~ULITE_STATUS_RXVALID;

 stat &= port->read_status_mask;

 if (stat & ULITE_STATUS_PARITY)
  flag = TTY_PARITY;


 stat &= ~port->ignore_status_mask;

 if (stat & ULITE_STATUS_RXVALID)
  tty_insert_flip_char(tty, ch, flag);

 if (stat & ULITE_STATUS_FRAME)
  tty_insert_flip_char(tty, 0, TTY_FRAME);

 if (stat & ULITE_STATUS_OVERRUN)
  tty_insert_flip_char(tty, 0, TTY_OVERRUN);

 return 1;
}
