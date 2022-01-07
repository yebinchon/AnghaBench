
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; int irq; int uartclk; } ;
struct uart_amba_port {int old_status; int clk; TYPE_1__ port; } ;


 scalar_t__ UART010_CR ;
 int UART010_CR_RIE ;
 int UART010_CR_RTIE ;
 int UART01x_CR_UARTEN ;
 scalar_t__ UART01x_FR ;
 int UART01x_FR_MODEM_ANY ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_get_rate (int ) ;
 int pl010_int ;
 int readb (scalar_t__) ;
 int request_irq (int ,int ,int ,char*,struct uart_amba_port*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int pl010_startup(struct uart_port *port)
{
 struct uart_amba_port *uap = (struct uart_amba_port *)port;
 int retval;




 retval = clk_enable(uap->clk);
 if (retval)
  goto out;

 uap->port.uartclk = clk_get_rate(uap->clk);




 retval = request_irq(uap->port.irq, pl010_int, 0, "uart-pl010", uap);
 if (retval)
  goto clk_dis;




 uap->old_status = readb(uap->port.membase + UART01x_FR) & UART01x_FR_MODEM_ANY;




 writel(UART01x_CR_UARTEN | UART010_CR_RIE | UART010_CR_RTIE,
        uap->port.membase + UART010_CR);

 return 0;

 clk_dis:
 clk_disable(uap->clk);
 out:
 return retval;
}
