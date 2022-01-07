
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int mapbase; } ;
struct sa1100_port {TYPE_1__ port; } ;


 int EBUSY ;
 int UART_PORT_SIZE ;
 int * request_mem_region (int ,int ,char*) ;

__attribute__((used)) static int sa1100_request_port(struct uart_port *port)
{
 struct sa1100_port *sport = (struct sa1100_port *)port;

 return request_mem_region(sport->port.mapbase, UART_PORT_SIZE,
   "sa11x0-uart") != ((void*)0) ? 0 : -EBUSY;
}
