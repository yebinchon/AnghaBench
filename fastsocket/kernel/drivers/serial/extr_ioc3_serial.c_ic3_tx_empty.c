
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct ioc3_port {TYPE_1__* ip_serial_regs; } ;
struct TYPE_2__ {int shadow; } ;


 int SHADOW_TEMT ;
 unsigned int TIOCSER_TEMT ;
 struct ioc3_port* get_ioc3_port (struct uart_port*) ;
 int readl (int *) ;

__attribute__((used)) static unsigned int ic3_tx_empty(struct uart_port *the_port)
{
 unsigned int ret = 0;
 struct ioc3_port *port = get_ioc3_port(the_port);

 if (readl(&port->ip_serial_regs->shadow) & SHADOW_TEMT)
  ret = TIOCSER_TEMT;
 return ret;
}
