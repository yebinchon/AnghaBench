
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sio_port {int dummy; } ;


 int DEBUG_INTR (char*,unsigned int) ;
 int receive_chars (struct uart_sio_port*,unsigned int*) ;
 int transmit_chars (struct uart_sio_port*) ;

__attribute__((used)) static inline void m32r_sio_handle_port(struct uart_sio_port *up,
 unsigned int status)
{
 DEBUG_INTR("status = %x...", status);

 if (status & 0x04)
  receive_chars(up, &status);
 if (status & 0x01)
  transmit_chars(up);
}
