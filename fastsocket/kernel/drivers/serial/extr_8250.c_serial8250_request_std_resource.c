
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iotype; int flags; int iobase; int mapbase; int membase; } ;
struct uart_8250_port {TYPE_1__ port; } ;


 int EBUSY ;
 int ENOMEM ;
 int UPF_IOREMAP ;







 int ioremap_nocache (int ,unsigned int) ;
 int release_mem_region (int ,unsigned int) ;
 int request_mem_region (int ,unsigned int,char*) ;
 int request_region (int ,unsigned int,char*) ;
 unsigned int serial8250_port_size (struct uart_8250_port*) ;

__attribute__((used)) static int serial8250_request_std_resource(struct uart_8250_port *up)
{
 unsigned int size = serial8250_port_size(up);
 int ret = 0;

 switch (up->port.iotype) {
 case 134:
 case 128:
 case 130:
 case 131:
 case 133:
  if (!up->port.mapbase)
   break;

  if (!request_mem_region(up->port.mapbase, size, "serial")) {
   ret = -EBUSY;
   break;
  }

  if (up->port.flags & UPF_IOREMAP) {
   up->port.membase = ioremap_nocache(up->port.mapbase,
         size);
   if (!up->port.membase) {
    release_mem_region(up->port.mapbase, size);
    ret = -ENOMEM;
   }
  }
  break;

 case 132:
 case 129:
  if (!request_region(up->port.iobase, size, "serial"))
   ret = -EBUSY;
  break;
 }
 return ret;
}
