
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int flags; TYPE_1__* termios; struct mxser_port* driver_data; } ;
struct TYPE_5__ {int flags; int * xmit_buf; int delta_msr_wait; } ;
struct mxser_port {int MCR; int slock; scalar_t__ ioaddr; TYPE_3__* board; TYPE_2__ port; scalar_t__ IER; } ;
struct TYPE_6__ {scalar_t__ chip_flag; } ;
struct TYPE_4__ {int c_cflag; } ;


 int ASYNC_INITIALIZED ;
 int HUPCL ;
 int MOXA_MUST_FCR_GDA_MODE_ENABLE ;
 int SET_MOXA_MUST_NO_SOFTWARE_FLOW_CONTROL (scalar_t__) ;
 int TTY_IO_ERROR ;
 scalar_t__ UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 scalar_t__ UART_IER ;
 scalar_t__ UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_RTS ;
 scalar_t__ UART_RX ;
 int free_page (unsigned long) ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void mxser_shutdown(struct tty_struct *tty)
{
 struct mxser_port *info = tty->driver_data;
 unsigned long flags;

 if (!(info->port.flags & ASYNC_INITIALIZED))
  return;

 spin_lock_irqsave(&info->slock, flags);





 wake_up_interruptible(&info->port.delta_msr_wait);




 if (info->port.xmit_buf) {
  free_page((unsigned long) info->port.xmit_buf);
  info->port.xmit_buf = ((void*)0);
 }

 info->IER = 0;
 outb(0x00, info->ioaddr + UART_IER);

 if (tty->termios->c_cflag & HUPCL)
  info->MCR &= ~(UART_MCR_DTR | UART_MCR_RTS);
 outb(info->MCR, info->ioaddr + UART_MCR);


 if (info->board->chip_flag)
  outb(UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT |
    MOXA_MUST_FCR_GDA_MODE_ENABLE,
    info->ioaddr + UART_FCR);
 else
  outb(UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT,
   info->ioaddr + UART_FCR);


 (void) inb(info->ioaddr + UART_RX);

 set_bit(TTY_IO_ERROR, &tty->flags);

 info->port.flags &= ~ASYNC_INITIALIZED;

 if (info->board->chip_flag)
  SET_MOXA_MUST_NO_SOFTWARE_FLOW_CONTROL(info->ioaddr);

 spin_unlock_irqrestore(&info->slock, flags);
}
