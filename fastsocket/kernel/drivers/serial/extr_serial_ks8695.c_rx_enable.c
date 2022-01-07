
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int* unused; } ;



__attribute__((used)) static inline void rx_enable(struct uart_port *port, int enabled)
{
 if(enabled)
  port->unused[0] |= 2;
 else
  port->unused[0] &= ~2;
}
