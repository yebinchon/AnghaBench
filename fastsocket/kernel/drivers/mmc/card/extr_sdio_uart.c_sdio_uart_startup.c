
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* buf; } ;
struct sdio_uart_port {int ier; TYPE_3__ xmit; int func; TYPE_1__* tty; int mctrl; } ;
struct TYPE_5__ {int c_cflag; } ;
struct TYPE_4__ {int hw_stopped; int flags; TYPE_2__* termios; } ;


 int CBAUD ;
 int CRTSCTS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TIOCM_CTS ;
 int TIOCM_DTR ;
 int TIOCM_OUT2 ;
 int TIOCM_RTS ;
 int TTY_IO_ERROR ;
 int UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_FCR_ENABLE_FIFO ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int UART_IER_RTOIE ;
 int UART_IER_UUE ;
 int UART_IIR ;
 int UART_LCR ;
 int UART_LCR_WLEN8 ;
 int UART_LSR ;
 int UART_MSR ;
 int UART_RX ;
 unsigned long __get_free_page (int ) ;
 int circ_clear (TYPE_3__*) ;
 int clear_bit (int ,int *) ;
 int free_page (unsigned long) ;
 int sdio_claim_irq (int ,int (*) (int )) ;
 int sdio_disable_func (int ) ;
 int sdio_enable_func (int ) ;
 int sdio_in (struct sdio_uart_port*,int ) ;
 int sdio_out (struct sdio_uart_port*,int ,int) ;
 int sdio_uart_change_speed (struct sdio_uart_port*,TYPE_2__*,int *) ;
 int sdio_uart_claim_func (struct sdio_uart_port*) ;
 int sdio_uart_get_mctrl (struct sdio_uart_port*) ;
 int sdio_uart_irq (int ) ;
 int sdio_uart_release_func (struct sdio_uart_port*) ;
 int sdio_uart_set_mctrl (struct sdio_uart_port*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int sdio_uart_startup(struct sdio_uart_port *port)
{
 unsigned long page;
 int ret;





 set_bit(TTY_IO_ERROR, &port->tty->flags);


 page = __get_free_page(GFP_KERNEL);
 if (!page)
  return -ENOMEM;
 port->xmit.buf = (unsigned char *)page;
 circ_clear(&port->xmit);

 ret = sdio_uart_claim_func(port);
 if (ret)
  goto err1;
 ret = sdio_enable_func(port->func);
 if (ret)
  goto err2;
 ret = sdio_claim_irq(port->func, sdio_uart_irq);
 if (ret)
  goto err3;





 sdio_out(port, UART_FCR, UART_FCR_ENABLE_FIFO);
 sdio_out(port, UART_FCR, UART_FCR_ENABLE_FIFO |
   UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);
 sdio_out(port, UART_FCR, 0);




 (void) sdio_in(port, UART_LSR);
 (void) sdio_in(port, UART_RX);
 (void) sdio_in(port, UART_IIR);
 (void) sdio_in(port, UART_MSR);




 sdio_out(port, UART_LCR, UART_LCR_WLEN8);

 port->ier = UART_IER_RLSI | UART_IER_RDI | UART_IER_RTOIE | UART_IER_UUE;
 port->mctrl = TIOCM_OUT2;

 sdio_uart_change_speed(port, port->tty->termios, ((void*)0));

 if (port->tty->termios->c_cflag & CBAUD)
  sdio_uart_set_mctrl(port, TIOCM_RTS | TIOCM_DTR);

 if (port->tty->termios->c_cflag & CRTSCTS)
  if (!(sdio_uart_get_mctrl(port) & TIOCM_CTS))
   port->tty->hw_stopped = 1;

 clear_bit(TTY_IO_ERROR, &port->tty->flags);


 sdio_uart_irq(port->func);

 sdio_uart_release_func(port);
 return 0;

err3:
 sdio_disable_func(port->func);
err2:
 sdio_uart_release_func(port);
err1:
 free_page((unsigned long)port->xmit.buf);
 return ret;
}
