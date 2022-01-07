
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ index; int flags; struct mxser_port* driver_data; } ;
struct mxser_port {int slock; scalar_t__ ioaddr; int MCR; } ;
struct file {int dummy; } ;


 int EIO ;
 int ENOIOCTLCMD ;
 scalar_t__ MXSER_PORTS ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int TTY_IO_ERROR ;
 scalar_t__ UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_RTS ;
 int outb (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int mxser_tiocmset(struct tty_struct *tty, struct file *file,
  unsigned int set, unsigned int clear)
{
 struct mxser_port *info = tty->driver_data;
 unsigned long flags;


 if (tty->index == MXSER_PORTS)
  return -ENOIOCTLCMD;
 if (test_bit(TTY_IO_ERROR, &tty->flags))
  return -EIO;

 spin_lock_irqsave(&info->slock, flags);

 if (set & TIOCM_RTS)
  info->MCR |= UART_MCR_RTS;
 if (set & TIOCM_DTR)
  info->MCR |= UART_MCR_DTR;

 if (clear & TIOCM_RTS)
  info->MCR &= ~UART_MCR_RTS;
 if (clear & TIOCM_DTR)
  info->MCR &= ~UART_MCR_DTR;

 outb(info->MCR, info->ioaddr + UART_MCR);
 spin_unlock_irqrestore(&info->slock, flags);
 return 0;
}
