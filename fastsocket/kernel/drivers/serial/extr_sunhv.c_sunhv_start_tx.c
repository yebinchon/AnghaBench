
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int transmit_chars (struct uart_port*) ;

__attribute__((used)) static void sunhv_start_tx(struct uart_port *port)
{
 transmit_chars(port);
}
