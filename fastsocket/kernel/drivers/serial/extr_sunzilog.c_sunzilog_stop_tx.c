
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sunzilog_port {int flags; } ;
struct uart_port {int dummy; } ;


 int SUNZILOG_FLAG_TX_STOPPED ;

__attribute__((used)) static void sunzilog_stop_tx(struct uart_port *port)
{
 struct uart_sunzilog_port *up = (struct uart_sunzilog_port *) port;

 up->flags |= SUNZILOG_FLAG_TX_STOPPED;
}
