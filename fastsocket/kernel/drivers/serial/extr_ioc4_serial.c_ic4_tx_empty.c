
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct ioc4_port {TYPE_1__* ip_serial_regs; } ;
struct TYPE_2__ {int shadow; } ;


 int IOC4_SHADOW_TEMT ;
 unsigned int TIOCSER_TEMT ;
 struct ioc4_port* get_ioc4_port (struct uart_port*,int ) ;
 scalar_t__ port_is_active (struct ioc4_port*,struct uart_port*) ;
 int readl (int *) ;

__attribute__((used)) static unsigned int ic4_tx_empty(struct uart_port *the_port)
{
 struct ioc4_port *port = get_ioc4_port(the_port, 0);
 unsigned int ret = 0;

 if (port_is_active(port, the_port)) {
  if (readl(&port->ip_serial_regs->shadow) & IOC4_SHADOW_TEMT)
   ret = TIOCSER_TEMT;
 }
 return ret;
}
