
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int * membase; int mapbase; } ;


 int ULITE_REGION ;
 int iounmap (int *) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void ulite_release_port(struct uart_port *port)
{
 release_mem_region(port->mapbase, ULITE_REGION);
 iounmap(port->membase);
 port->membase = ((void*)0);
}
