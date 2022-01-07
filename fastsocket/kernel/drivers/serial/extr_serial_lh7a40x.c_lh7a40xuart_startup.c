
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port_lh7a40x {int statusPrev; } ;
struct uart_port {int irq; } ;


 int BIT_SET (struct uart_port*,int ,int) ;
 int RxInt ;
 int RxTimeoutInt ;
 int SIRDIS ;
 int UARTEN ;
 int UART_R_CON ;
 int UART_R_INTEN ;
 int UART_R_STATUS ;
 int UR (struct uart_port*,int ) ;
 int lh7a40xuart_int ;
 int request_irq (int ,int ,int ,char*,struct uart_port*) ;

__attribute__((used)) static int lh7a40xuart_startup (struct uart_port* port)
{
 int retval;

 retval = request_irq (port->irq, lh7a40xuart_int, 0,
         "serial_lh7a40x", port);
 if (retval)
  return retval;


 ((struct uart_port_lh7a40x*) port)->statusPrev
  = UR (port, UART_R_STATUS);




 BIT_SET (port, UART_R_CON, UARTEN | SIRDIS);
 BIT_SET (port, UART_R_INTEN, RxTimeoutInt | RxInt);

 return 0;
}
