
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sio_port {int dummy; } ;


 unsigned int __sio_in (int) ;

__attribute__((used)) static unsigned int serial_in(struct uart_sio_port *up, int offset)
{
 if (!offset)
  return 0;

 return __sio_in(offset);
}
