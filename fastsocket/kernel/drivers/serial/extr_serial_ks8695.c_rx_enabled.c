
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int* unused; } ;



__attribute__((used)) static inline int rx_enabled(struct uart_port *port)
{
 return port->unused[0] & 2;
}
