
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iobase; } ;
struct uart_sio_port {TYPE_1__ port; } ;


 int __sio_out (int,scalar_t__) ;

__attribute__((used)) static void sio_out(struct uart_sio_port *up, int offset, int value)
{
 __sio_out(value, up->port.iobase + offset);
}
