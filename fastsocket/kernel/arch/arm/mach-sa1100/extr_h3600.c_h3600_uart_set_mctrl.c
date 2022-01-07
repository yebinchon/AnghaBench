
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uart_port {scalar_t__ mapbase; } ;


 void* GPCR ;
 void* GPIO_H3600_COM_RTS ;
 void* GPSR ;
 int TIOCM_RTS ;
 scalar_t__ _Ser3UTCR0 ;

__attribute__((used)) static void h3600_uart_set_mctrl(struct uart_port *port, u_int mctrl)
{
 if (port->mapbase == _Ser3UTCR0) {
  if (mctrl & TIOCM_RTS)
   GPCR = GPIO_H3600_COM_RTS;
  else
   GPSR = GPIO_H3600_COM_RTS;
 }
}
