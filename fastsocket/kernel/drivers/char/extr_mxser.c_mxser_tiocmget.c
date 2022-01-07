
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ index; int flags; struct mxser_port* driver_data; } ;
struct mxser_port {unsigned char MCR; int slock; scalar_t__ ioaddr; } ;
struct file {int dummy; } ;


 int EIO ;
 int ENOIOCTLCMD ;
 scalar_t__ MXSER_PORTS ;
 int TIOCM_CAR ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RNG ;
 int TIOCM_RTS ;
 int TTY_IO_ERROR ;
 unsigned char UART_MCR_DTR ;
 unsigned char UART_MCR_RTS ;
 scalar_t__ UART_MSR ;
 unsigned char UART_MSR_ANY_DELTA ;
 unsigned char UART_MSR_CTS ;
 unsigned char UART_MSR_DCD ;
 unsigned char UART_MSR_DSR ;
 unsigned char UART_MSR_RI ;
 unsigned char inb (scalar_t__) ;
 int mxser_check_modem_status (struct tty_struct*,struct mxser_port*,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int mxser_tiocmget(struct tty_struct *tty, struct file *file)
{
 struct mxser_port *info = tty->driver_data;
 unsigned char control, status;
 unsigned long flags;


 if (tty->index == MXSER_PORTS)
  return -ENOIOCTLCMD;
 if (test_bit(TTY_IO_ERROR, &tty->flags))
  return -EIO;

 control = info->MCR;

 spin_lock_irqsave(&info->slock, flags);
 status = inb(info->ioaddr + UART_MSR);
 if (status & UART_MSR_ANY_DELTA)
  mxser_check_modem_status(tty, info, status);
 spin_unlock_irqrestore(&info->slock, flags);
 return ((control & UART_MCR_RTS) ? TIOCM_RTS : 0) |
      ((control & UART_MCR_DTR) ? TIOCM_DTR : 0) |
      ((status & UART_MSR_DCD) ? TIOCM_CAR : 0) |
      ((status & UART_MSR_RI) ? TIOCM_RNG : 0) |
      ((status & UART_MSR_DSR) ? TIOCM_DSR : 0) |
      ((status & UART_MSR_CTS) ? TIOCM_CTS : 0);
}
