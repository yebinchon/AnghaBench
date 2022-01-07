
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ buf; } ;
struct sdio_uart_port {int lcr; TYPE_3__ xmit; int func; scalar_t__ ier; TYPE_2__* tty; } ;
struct TYPE_5__ {TYPE_1__* termios; } ;
struct TYPE_4__ {int c_cflag; } ;


 int HUPCL ;
 int TIOCM_DTR ;
 int TIOCM_OUT2 ;
 int TIOCM_RTS ;
 int UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_FCR_ENABLE_FIFO ;
 int UART_IER ;
 int UART_LCR ;
 int UART_LCR_SBC ;
 int free_page (unsigned long) ;
 int sdio_disable_func (int ) ;
 int sdio_out (struct sdio_uart_port*,int ,int) ;
 int sdio_release_irq (int ) ;
 int sdio_uart_claim_func (struct sdio_uart_port*) ;
 int sdio_uart_clear_mctrl (struct sdio_uart_port*,int) ;
 int sdio_uart_release_func (struct sdio_uart_port*) ;
 int sdio_uart_stop_rx (struct sdio_uart_port*) ;

__attribute__((used)) static void sdio_uart_shutdown(struct sdio_uart_port *port)
{
 int ret;

 ret = sdio_uart_claim_func(port);
 if (ret)
  goto skip;

 sdio_uart_stop_rx(port);




 if (port->tty->termios->c_cflag & HUPCL)
  sdio_uart_clear_mctrl(port, TIOCM_DTR | TIOCM_RTS);


 sdio_release_irq(port->func);
 port->ier = 0;
 sdio_out(port, UART_IER, 0);

 sdio_uart_clear_mctrl(port, TIOCM_OUT2);


 port->lcr &= ~UART_LCR_SBC;
 sdio_out(port, UART_LCR, port->lcr);
 sdio_out(port, UART_FCR, UART_FCR_ENABLE_FIFO |
     UART_FCR_CLEAR_RCVR |
     UART_FCR_CLEAR_XMIT);
 sdio_out(port, UART_FCR, 0);

 sdio_disable_func(port->func);

 sdio_uart_release_func(port);

skip:

 free_page((unsigned long)port->xmit.buf);
}
