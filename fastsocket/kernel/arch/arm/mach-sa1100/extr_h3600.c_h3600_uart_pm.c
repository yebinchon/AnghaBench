
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uart_port {scalar_t__ mapbase; } ;


 int IPAQ_EGPIO_IR_ON ;
 int IPAQ_EGPIO_RS232_ON ;
 scalar_t__ _Ser2UTCR0 ;
 scalar_t__ _Ser3UTCR0 ;
 int assign_h3600_egpio (int ,int) ;

__attribute__((used)) static void h3600_uart_pm(struct uart_port *port, u_int state, u_int oldstate)
{
 if (port->mapbase == _Ser2UTCR0) {
  assign_h3600_egpio(IPAQ_EGPIO_IR_ON, !state);
 } else if (port->mapbase == _Ser3UTCR0) {
  assign_h3600_egpio(IPAQ_EGPIO_RS232_ON, !state);
 }
}
