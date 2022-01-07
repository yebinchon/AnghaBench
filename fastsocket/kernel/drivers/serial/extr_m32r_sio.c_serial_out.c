
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sio_port {int dummy; } ;


 int __sio_out (int,int) ;

__attribute__((used)) static void serial_out(struct uart_sio_port *up, int offset, int value)
{
 if (!offset)
  return;

 __sio_out(value, offset);
}
