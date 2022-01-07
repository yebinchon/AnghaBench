
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; } ;


 int DRIVER_NAME ;
 int EBUSY ;
 int UART_PORT_SIZE ;
 int * request_mem_region (int ,int ,int ) ;

__attribute__((used)) static int netx_request_port(struct uart_port *port)
{
 return request_mem_region(port->mapbase, UART_PORT_SIZE,
   DRIVER_NAME) != ((void*)0) ? 0 : -EBUSY;
}
