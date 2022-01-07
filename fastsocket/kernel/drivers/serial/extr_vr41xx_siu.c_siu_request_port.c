
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int flags; int * membase; int mapbase; } ;
struct resource {int dummy; } ;


 int EBUSY ;
 int ENOMEM ;
 int UPF_IOREMAP ;
 int * ioremap (int ,unsigned long) ;
 int release_resource (struct resource*) ;
 struct resource* request_mem_region (int ,unsigned long,int ) ;
 unsigned long siu_port_size (struct uart_port*) ;
 int siu_type_name (struct uart_port*) ;

__attribute__((used)) static int siu_request_port(struct uart_port *port)
{
 unsigned long size;
 struct resource *res;

 size = siu_port_size(port);
 res = request_mem_region(port->mapbase, size, siu_type_name(port));
 if (res == ((void*)0))
  return -EBUSY;

 if (port->flags & UPF_IOREMAP) {
  port->membase = ioremap(port->mapbase, size);
  if (port->membase == ((void*)0)) {
   release_resource(res);
   return -ENOMEM;
  }
 }

 return 0;
}
