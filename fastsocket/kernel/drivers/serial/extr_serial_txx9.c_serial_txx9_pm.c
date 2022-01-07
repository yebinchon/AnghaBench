
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int serial_txx9_initialize (struct uart_port*) ;

__attribute__((used)) static void
serial_txx9_pm(struct uart_port *port, unsigned int state,
       unsigned int oldstate)
{
 if (state == 0 && oldstate != -1)
  serial_txx9_initialize(port);
}
