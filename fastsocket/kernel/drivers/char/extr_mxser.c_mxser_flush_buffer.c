
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct mxser_port* driver_data; } ;
struct mxser_port {int slock; scalar_t__ ioaddr; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;


 scalar_t__ UART_FCR ;
 char UART_FCR_CLEAR_RCVR ;
 char UART_FCR_CLEAR_XMIT ;
 char inb (scalar_t__) ;
 int outb (char,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void mxser_flush_buffer(struct tty_struct *tty)
{
 struct mxser_port *info = tty->driver_data;
 char fcr;
 unsigned long flags;


 spin_lock_irqsave(&info->slock, flags);
 info->xmit_cnt = info->xmit_head = info->xmit_tail = 0;

 fcr = inb(info->ioaddr + UART_FCR);
 outb((fcr | UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT),
  info->ioaddr + UART_FCR);
 outb(fcr, info->ioaddr + UART_FCR);

 spin_unlock_irqrestore(&info->slock, flags);

 tty_wakeup(tty);
}
