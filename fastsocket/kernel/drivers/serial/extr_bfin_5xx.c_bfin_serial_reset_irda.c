
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; } ;


 unsigned short IREN ;
 unsigned short RPOLC ;
 int SSYNC () ;
 unsigned short UART_GET_GCTL (int *) ;
 int UART_PUT_GCTL (int *,unsigned short) ;
 int * bfin_serial_ports ;

__attribute__((used)) static void bfin_serial_reset_irda(struct uart_port *port)
{
 int line = port->line;
 unsigned short val;

 val = UART_GET_GCTL(&bfin_serial_ports[line]);
 val &= ~(IREN | RPOLC);
 UART_PUT_GCTL(&bfin_serial_ports[line], val);
 SSYNC();
 val |= (IREN | RPOLC);
 UART_PUT_GCTL(&bfin_serial_ports[line], val);
 SSYNC();
}
