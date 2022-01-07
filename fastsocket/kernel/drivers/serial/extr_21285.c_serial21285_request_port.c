
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; } ;


 int EBUSY ;
 int * request_mem_region (int ,int,int ) ;
 int serial21285_name ;

__attribute__((used)) static int serial21285_request_port(struct uart_port *port)
{
 return request_mem_region(port->mapbase, 32, serial21285_name)
    != ((void*)0) ? 0 : -EBUSY;
}
