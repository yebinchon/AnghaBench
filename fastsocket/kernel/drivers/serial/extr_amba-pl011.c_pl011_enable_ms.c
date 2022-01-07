
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;
struct uart_amba_port {int im; TYPE_1__ port; } ;


 int UART011_CTSMIM ;
 int UART011_DCDMIM ;
 int UART011_DSRMIM ;
 scalar_t__ UART011_IMSC ;
 int UART011_RIMIM ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void pl011_enable_ms(struct uart_port *port)
{
 struct uart_amba_port *uap = (struct uart_amba_port *)port;

 uap->im |= UART011_RIMIM|UART011_CTSMIM|UART011_DCDMIM|UART011_DSRMIM;
 writew(uap->im, uap->port.membase + UART011_IMSC);
}
