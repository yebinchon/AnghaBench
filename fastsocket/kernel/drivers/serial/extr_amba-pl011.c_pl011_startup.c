
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; scalar_t__ membase; int irq; int uartclk; } ;
struct uart_amba_port {unsigned int ifls; int old_status; int im; int clk; TYPE_1__ port; } ;


 scalar_t__ UART011_CR ;
 unsigned int UART011_CR_LBE ;
 unsigned int UART011_CR_RXE ;
 unsigned int UART011_CR_TXE ;
 scalar_t__ UART011_FBRD ;
 scalar_t__ UART011_IBRD ;
 scalar_t__ UART011_IFLS ;
 scalar_t__ UART011_IMSC ;
 scalar_t__ UART011_LCRH ;
 int UART011_RTIM ;
 int UART011_RXIM ;
 unsigned int UART01x_CR_UARTEN ;
 scalar_t__ UART01x_DR ;
 scalar_t__ UART01x_FR ;
 int UART01x_FR_BUSY ;
 int UART01x_FR_MODEM_ANY ;
 int barrier () ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_get_rate (int ) ;
 int pl011_int ;
 int readw (scalar_t__) ;
 int request_irq (int ,int ,int ,char*,struct uart_amba_port*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static int pl011_startup(struct uart_port *port)
{
 struct uart_amba_port *uap = (struct uart_amba_port *)port;
 unsigned int cr;
 int retval;




 retval = clk_enable(uap->clk);
 if (retval)
  goto out;

 uap->port.uartclk = clk_get_rate(uap->clk);




 retval = request_irq(uap->port.irq, pl011_int, 0, "uart-pl011", uap);
 if (retval)
  goto clk_dis;

 writew(uap->ifls, uap->port.membase + UART011_IFLS);




 cr = UART01x_CR_UARTEN | UART011_CR_TXE | UART011_CR_LBE;
 writew(cr, uap->port.membase + UART011_CR);
 writew(0, uap->port.membase + UART011_FBRD);
 writew(1, uap->port.membase + UART011_IBRD);
 writew(0, uap->port.membase + UART011_LCRH);
 writew(0, uap->port.membase + UART01x_DR);
 while (readw(uap->port.membase + UART01x_FR) & UART01x_FR_BUSY)
  barrier();

 cr = UART01x_CR_UARTEN | UART011_CR_RXE | UART011_CR_TXE;
 writew(cr, uap->port.membase + UART011_CR);




 uap->old_status = readw(uap->port.membase + UART01x_FR) & UART01x_FR_MODEM_ANY;




 spin_lock_irq(&uap->port.lock);
 uap->im = UART011_RXIM | UART011_RTIM;
 writew(uap->im, uap->port.membase + UART011_IMSC);
 spin_unlock_irq(&uap->port.lock);

 return 0;

 clk_dis:
 clk_disable(uap->clk);
 out:
 return retval;
}
