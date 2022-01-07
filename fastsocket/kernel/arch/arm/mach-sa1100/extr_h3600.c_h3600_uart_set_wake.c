
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct uart_port {scalar_t__ mapbase; } ;


 int EINVAL ;
 int PWER ;
 int PWER_GPIO23 ;
 int PWER_GPIO25 ;
 scalar_t__ _Ser3UTCR0 ;

__attribute__((used)) static int h3600_uart_set_wake(struct uart_port *port, u_int enable)
{
 int err = -EINVAL;

 if (port->mapbase == _Ser3UTCR0) {
  if (enable)
   PWER |= PWER_GPIO23 | PWER_GPIO25;
  else
   PWER &= ~(PWER_GPIO23 | PWER_GPIO25);
  err = 0;
 }
 return err;
}
