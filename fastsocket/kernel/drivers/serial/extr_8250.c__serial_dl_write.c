
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;


 int UART_DLL ;
 int UART_DLM ;
 int serial_outp (struct uart_8250_port*,int ,int) ;

__attribute__((used)) static inline void _serial_dl_write(struct uart_8250_port *up, int value)
{
 serial_outp(up, UART_DLL, value & 0xff);
 serial_outp(up, UART_DLM, value >> 8 & 0xff);
}
