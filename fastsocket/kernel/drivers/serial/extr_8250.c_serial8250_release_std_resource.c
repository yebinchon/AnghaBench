
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iotype; int flags; int iobase; int mapbase; int * membase; } ;
struct uart_8250_port {TYPE_1__ port; } ;


 int UPF_IOREMAP ;







 int iounmap (int *) ;
 int release_mem_region (int ,unsigned int) ;
 int release_region (int ,unsigned int) ;
 unsigned int serial8250_port_size (struct uart_8250_port*) ;

__attribute__((used)) static void serial8250_release_std_resource(struct uart_8250_port *up)
{
 unsigned int size = serial8250_port_size(up);

 switch (up->port.iotype) {
 case 134:
 case 128:
 case 130:
 case 131:
 case 133:
  if (!up->port.mapbase)
   break;

  if (up->port.flags & UPF_IOREMAP) {
   iounmap(up->port.membase);
   up->port.membase = ((void*)0);
  }

  release_mem_region(up->port.mapbase, size);
  break;

 case 132:
 case 129:
  release_region(up->port.iobase, size);
  break;
 }
}
