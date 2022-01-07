
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int flags; struct mxser_port* driver_data; } ;
struct TYPE_4__ {int flags; unsigned char* xmit_buf; } ;
struct mxser_port {int MCR; int IER; int slock; TYPE_2__ port; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; scalar_t__ ioaddr; TYPE_1__* board; int type; } ;
struct TYPE_3__ {scalar_t__ chip_flag; } ;


 int ASYNC_INITIALIZED ;
 int CAP_SYS_ADMIN ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MOXA_MUST_FCR_GDA_MODE_ENABLE ;
 int MOXA_MUST_IER_EGDAI ;
 int TTY_IO_ERROR ;
 scalar_t__ UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 scalar_t__ UART_IER ;
 int UART_IER_MSI ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 scalar_t__ UART_IIR ;
 scalar_t__ UART_LCR ;
 int UART_LCR_WLEN8 ;
 scalar_t__ UART_LSR ;
 scalar_t__ UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_RTS ;
 scalar_t__ UART_MSR ;
 scalar_t__ UART_RX ;
 unsigned long __get_free_page (int ) ;
 scalar_t__ capable (int ) ;
 int clear_bit (int ,int *) ;
 int free_page (unsigned long) ;
 int inb (scalar_t__) ;
 int mxser_change_speed (struct tty_struct*,int *) ;
 int outb (int,scalar_t__) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mxser_startup(struct tty_struct *tty)
{
 struct mxser_port *info = tty->driver_data;
 unsigned long page;
 unsigned long flags;

 page = __get_free_page(GFP_KERNEL);
 if (!page)
  return -ENOMEM;

 spin_lock_irqsave(&info->slock, flags);

 if (info->port.flags & ASYNC_INITIALIZED) {
  free_page(page);
  spin_unlock_irqrestore(&info->slock, flags);
  return 0;
 }

 if (!info->ioaddr || !info->type) {
  set_bit(TTY_IO_ERROR, &tty->flags);
  free_page(page);
  spin_unlock_irqrestore(&info->slock, flags);
  return 0;
 }
 if (info->port.xmit_buf)
  free_page(page);
 else
  info->port.xmit_buf = (unsigned char *) page;





 if (info->board->chip_flag)
  outb((UART_FCR_CLEAR_RCVR |
   UART_FCR_CLEAR_XMIT |
   MOXA_MUST_FCR_GDA_MODE_ENABLE), info->ioaddr + UART_FCR);
 else
  outb((UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT),
   info->ioaddr + UART_FCR);






 if (inb(info->ioaddr + UART_LSR) == 0xff) {
  spin_unlock_irqrestore(&info->slock, flags);
  if (capable(CAP_SYS_ADMIN)) {
   if (tty)
    set_bit(TTY_IO_ERROR, &tty->flags);
   return 0;
  } else
   return -ENODEV;
 }




 (void) inb(info->ioaddr + UART_LSR);
 (void) inb(info->ioaddr + UART_RX);
 (void) inb(info->ioaddr + UART_IIR);
 (void) inb(info->ioaddr + UART_MSR);




 outb(UART_LCR_WLEN8, info->ioaddr + UART_LCR);
 info->MCR = UART_MCR_DTR | UART_MCR_RTS;
 outb(info->MCR, info->ioaddr + UART_MCR);




 info->IER = UART_IER_MSI | UART_IER_RLSI | UART_IER_RDI;

 if (info->board->chip_flag)
  info->IER |= MOXA_MUST_IER_EGDAI;
 outb(info->IER, info->ioaddr + UART_IER);




 (void) inb(info->ioaddr + UART_LSR);
 (void) inb(info->ioaddr + UART_RX);
 (void) inb(info->ioaddr + UART_IIR);
 (void) inb(info->ioaddr + UART_MSR);

 clear_bit(TTY_IO_ERROR, &tty->flags);
 info->xmit_cnt = info->xmit_head = info->xmit_tail = 0;




 mxser_change_speed(tty, ((void*)0));
 info->port.flags |= ASYNC_INITIALIZED;
 spin_unlock_irqrestore(&info->slock, flags);

 return 0;
}
