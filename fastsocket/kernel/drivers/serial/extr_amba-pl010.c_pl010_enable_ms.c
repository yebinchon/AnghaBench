
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;
struct uart_amba_port {TYPE_1__ port; } ;


 scalar_t__ UART010_CR ;
 unsigned int UART010_CR_MSIE ;
 unsigned int readb (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void pl010_enable_ms(struct uart_port *port)
{
 struct uart_amba_port *uap = (struct uart_amba_port *)port;
 unsigned int cr;

 cr = readb(uap->port.membase + UART010_CR);
 cr |= UART010_CR_MSIE;
 writel(cr, uap->port.membase + UART010_CR);
}
