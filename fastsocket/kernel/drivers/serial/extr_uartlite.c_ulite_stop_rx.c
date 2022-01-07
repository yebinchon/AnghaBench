
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int ignore_status_mask; } ;


 int ULITE_STATUS_FRAME ;
 int ULITE_STATUS_OVERRUN ;
 int ULITE_STATUS_PARITY ;
 int ULITE_STATUS_RXVALID ;

__attribute__((used)) static void ulite_stop_rx(struct uart_port *port)
{

 port->ignore_status_mask = ULITE_STATUS_RXVALID | ULITE_STATUS_PARITY
  | ULITE_STATUS_FRAME | ULITE_STATUS_OVERRUN;
}
