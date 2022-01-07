
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long regshift; int iotype; int iobase; } ;
struct uart_8250_port {TYPE_1__ port; } ;


 unsigned long UART_RSA_BASE ;


 int release_region (int ,unsigned int) ;

__attribute__((used)) static void serial8250_release_rsa_resource(struct uart_8250_port *up)
{
 unsigned long offset = UART_RSA_BASE << up->port.regshift;
 unsigned int size = 8 << up->port.regshift;

 switch (up->port.iotype) {
 case 129:
 case 128:
  release_region(up->port.iobase + offset, size);
  break;
 }
}
