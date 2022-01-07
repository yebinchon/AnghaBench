
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;
struct uart_amba_port {TYPE_1__ port; int im; } ;


 scalar_t__ UART011_IMSC ;
 int UART011_TXIM ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void pl011_start_tx(struct uart_port *port)
{
 struct uart_amba_port *uap = (struct uart_amba_port *)port;

 uap->im |= UART011_TXIM;
 writew(uap->im, uap->port.membase + UART011_IMSC);
}
