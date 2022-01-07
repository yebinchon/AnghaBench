
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; } ;


 int UART_PORT_SIZE ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void ks8695uart_release_port(struct uart_port *port)
{
 release_mem_region(port->mapbase, UART_PORT_SIZE);
}
