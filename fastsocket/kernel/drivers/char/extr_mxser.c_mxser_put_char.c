
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int hw_stopped; int stopped; struct mxser_port* driver_data; } ;
struct TYPE_3__ {unsigned char* xmit_buf; } ;
struct mxser_port {int xmit_cnt; int xmit_head; scalar_t__ type; int IER; int slock; scalar_t__ ioaddr; TYPE_2__* board; TYPE_1__ port; } ;
struct TYPE_4__ {scalar_t__ chip_flag; } ;


 scalar_t__ PORT_16550A ;
 int SERIAL_XMIT_SIZE ;
 scalar_t__ UART_IER ;
 int UART_IER_THRI ;
 int outb (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mxser_put_char(struct tty_struct *tty, unsigned char ch)
{
 struct mxser_port *info = tty->driver_data;
 unsigned long flags;

 if (!info->port.xmit_buf)
  return 0;

 if (info->xmit_cnt >= SERIAL_XMIT_SIZE - 1)
  return 0;

 spin_lock_irqsave(&info->slock, flags);
 info->port.xmit_buf[info->xmit_head++] = ch;
 info->xmit_head &= SERIAL_XMIT_SIZE - 1;
 info->xmit_cnt++;
 spin_unlock_irqrestore(&info->slock, flags);
 if (!tty->stopped) {
  if (!tty->hw_stopped ||
    (info->type == PORT_16550A) ||
    info->board->chip_flag) {
   spin_lock_irqsave(&info->slock, flags);
   outb(info->IER & ~UART_IER_THRI, info->ioaddr + UART_IER);
   info->IER |= UART_IER_THRI;
   outb(info->IER, info->ioaddr + UART_IER);
   spin_unlock_irqrestore(&info->slock, flags);
  }
 }
 return 1;
}
