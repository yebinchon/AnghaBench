
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regshift; int iotype; unsigned long mapbase; int iobase; } ;
struct uart_sio_port {TYPE_1__ port; } ;
struct resource {int dummy; } ;


 int EBUSY ;


 struct resource* request_mem_region (unsigned long,unsigned int,char*) ;
 struct resource* request_region (int ,unsigned int,char*) ;

__attribute__((used)) static int
m32r_sio_request_std_resource(struct uart_sio_port *up, struct resource **res)
{
 unsigned int size = 8 << up->port.regshift;

 unsigned long start;

 int ret = 0;

 switch (up->port.iotype) {
 case 129:
  if (up->port.mapbase) {



   start = up->port.mapbase;
   *res = request_mem_region(start, size, "serial");

   if (!*res)
    ret = -EBUSY;
  }
  break;

 case 128:
  *res = request_region(up->port.iobase, size, "serial");
  if (!*res)
   ret = -EBUSY;
  break;
 }
 return ret;
}
