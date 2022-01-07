
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct uart_ip22zilog_port {int flags; } ;


 int IP22ZILOG_FLAG_TX_STOPPED ;

__attribute__((used)) static void ip22zilog_stop_tx(struct uart_port *port)
{
 struct uart_ip22zilog_port *up = (struct uart_ip22zilog_port *) port;

 up->flags |= IP22ZILOG_FLAG_TX_STOPPED;
}
