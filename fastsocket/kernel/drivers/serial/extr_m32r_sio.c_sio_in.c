
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iobase; } ;
struct uart_sio_port {TYPE_1__ port; } ;


 unsigned int __sio_in (scalar_t__) ;

__attribute__((used)) static unsigned int sio_in(struct uart_sio_port *up, int offset)
{
 return __sio_in(up->port.iobase + offset);
}
