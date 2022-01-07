
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int iobase; int irq; int lock; int mctrl; } ;
struct uart_sunsu_port {TYPE_1__ port; scalar_t__ ier; } ;
struct uart_port {int dummy; } ;


 int TIOCM_OUT1 ;
 int TIOCM_OUT2 ;
 int UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_FCR_ENABLE_FIFO ;
 int UART_IER ;
 int UART_LCR ;
 int UART_LCR_SBC ;
 int UART_RX ;
 int UPF_FOURPORT ;
 int disable_rsa (struct uart_sunsu_port*) ;
 int free_irq (int ,struct uart_sunsu_port*) ;
 int inb (int) ;
 int serial_in (struct uart_sunsu_port*,int ) ;
 int serial_inp (struct uart_sunsu_port*,int ) ;
 int serial_out (struct uart_sunsu_port*,int ,int) ;
 int serial_outp (struct uart_sunsu_port*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sunsu_set_mctrl (TYPE_1__*,int ) ;

__attribute__((used)) static void sunsu_shutdown(struct uart_port *port)
{
 struct uart_sunsu_port *up = (struct uart_sunsu_port *) port;
 unsigned long flags;




 up->ier = 0;
 serial_outp(up, UART_IER, 0);

 spin_lock_irqsave(&up->port.lock, flags);
 if (up->port.flags & UPF_FOURPORT) {

  inb((up->port.iobase & 0xfe0) | 0x1f);
  up->port.mctrl |= TIOCM_OUT1;
 } else
  up->port.mctrl &= ~TIOCM_OUT2;

 sunsu_set_mctrl(&up->port, up->port.mctrl);
 spin_unlock_irqrestore(&up->port.lock, flags);




 serial_out(up, UART_LCR, serial_inp(up, UART_LCR) & ~UART_LCR_SBC);
 serial_outp(up, UART_FCR, UART_FCR_ENABLE_FIFO |
      UART_FCR_CLEAR_RCVR |
      UART_FCR_CLEAR_XMIT);
 serial_outp(up, UART_FCR, 0);
 (void) serial_in(up, UART_RX);

 free_irq(up->port.irq, up);
}
