
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uart_port {scalar_t__ mapbase; } ;


 int GPIO_H3600_COM_CTS ;
 int GPIO_H3600_COM_DCD ;
 int GPLR ;
 int TIOCM_CD ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 scalar_t__ _Ser3UTCR0 ;

__attribute__((used)) static u_int h3600_uart_get_mctrl(struct uart_port *port)
{
 u_int ret = TIOCM_CD | TIOCM_CTS | TIOCM_DSR;

 if (port->mapbase == _Ser3UTCR0) {
  int gplr = GPLR;

  if (gplr & GPIO_H3600_COM_DCD)
   ret &= ~TIOCM_CD;
  if (gplr & GPIO_H3600_COM_CTS)
   ret &= ~TIOCM_CTS;
 }

 return ret;
}
