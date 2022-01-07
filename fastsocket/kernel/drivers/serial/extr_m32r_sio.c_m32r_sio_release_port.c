
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long regshift; int iotype; unsigned long mapbase; unsigned long iobase; int * membase; } ;
struct uart_sio_port {TYPE_1__ port; } ;
struct uart_port {int dummy; } ;




 int iounmap (int *) ;
 int release_mem_region (unsigned long,int) ;
 int release_region (unsigned long,int) ;

__attribute__((used)) static void m32r_sio_release_port(struct uart_port *port)
{
 struct uart_sio_port *up = (struct uart_sio_port *)port;
 unsigned long start, offset = 0, size = 0;

 size <<= up->port.regshift;

 switch (up->port.iotype) {
 case 129:
  if (up->port.mapbase) {



   iounmap(up->port.membase);
   up->port.membase = ((void*)0);

   start = up->port.mapbase;

   if (size)
    release_mem_region(start + offset, size);
   release_mem_region(start, 8 << up->port.regshift);
  }
  break;

 case 128:
  start = up->port.iobase;

  if (size)
   release_region(start + offset, size);
  release_region(start + offset, 8 << up->port.regshift);
  break;

 default:
  break;
 }
}
