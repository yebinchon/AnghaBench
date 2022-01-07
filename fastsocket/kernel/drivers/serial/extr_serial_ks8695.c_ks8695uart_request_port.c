
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; } ;


 int EBUSY ;
 int UART_PORT_SIZE ;
 int * request_mem_region (int ,int ,char*) ;

__attribute__((used)) static int ks8695uart_request_port(struct uart_port *port)
{
 return request_mem_region(port->mapbase, UART_PORT_SIZE,
   "serial_ks8695") != ((void*)0) ? 0 : -EBUSY;
}
