
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long regshift; int iotype; unsigned long iobase; } ;
struct uart_8250_port {TYPE_1__ port; } ;


 int EBUSY ;
 int EINVAL ;
 unsigned long UART_RSA_BASE ;


 int request_region (unsigned long,unsigned int,char*) ;

__attribute__((used)) static int serial8250_request_rsa_resource(struct uart_8250_port *up)
{
 unsigned long start = UART_RSA_BASE << up->port.regshift;
 unsigned int size = 8 << up->port.regshift;
 int ret = -EINVAL;

 switch (up->port.iotype) {
 case 129:
 case 128:
  start += up->port.iobase;
  if (request_region(start, size, "serial-rsa"))
   ret = 0;
  else
   ret = -EBUSY;
  break;
 }

 return ret;
}
