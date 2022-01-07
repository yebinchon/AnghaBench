
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; int irq; } ;
struct uart_amba_port {int clk; TYPE_1__ port; } ;


 scalar_t__ UART010_CR ;
 scalar_t__ UART010_LCRH ;
 int UART01x_LCRH_BRK ;
 int UART01x_LCRH_FEN ;
 int clk_disable (int ) ;
 int free_irq (int ,struct uart_amba_port*) ;
 int readb (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void pl010_shutdown(struct uart_port *port)
{
 struct uart_amba_port *uap = (struct uart_amba_port *)port;




 free_irq(uap->port.irq, uap);




 writel(0, uap->port.membase + UART010_CR);


 writel(readb(uap->port.membase + UART010_LCRH) &
  ~(UART01x_LCRH_BRK | UART01x_LCRH_FEN),
        uap->port.membase + UART010_LCRH);




 clk_disable(uap->clk);
}
