
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_txx9_port {int dummy; } ;


 unsigned int sio_in (struct uart_txx9_port*,int) ;
 int sio_out (struct uart_txx9_port*,int,unsigned int) ;

__attribute__((used)) static inline void
sio_mask(struct uart_txx9_port *up, int offset, unsigned int value)
{
 sio_out(up, offset, sio_in(up, offset) & ~value);
}
