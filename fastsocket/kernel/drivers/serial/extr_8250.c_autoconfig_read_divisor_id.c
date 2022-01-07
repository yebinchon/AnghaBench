
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;


 int UART_DLL ;
 int UART_DLM ;
 int UART_LCR ;
 unsigned char UART_LCR_DLAB ;
 int serial_inp (struct uart_8250_port*,int ) ;
 int serial_outp (struct uart_8250_port*,int ,unsigned char) ;

__attribute__((used)) static unsigned int autoconfig_read_divisor_id(struct uart_8250_port *p)
{
 unsigned char old_dll, old_dlm, old_lcr;
 unsigned int id;

 old_lcr = serial_inp(p, UART_LCR);
 serial_outp(p, UART_LCR, UART_LCR_DLAB);

 old_dll = serial_inp(p, UART_DLL);
 old_dlm = serial_inp(p, UART_DLM);

 serial_outp(p, UART_DLL, 0);
 serial_outp(p, UART_DLM, 0);

 id = serial_inp(p, UART_DLL) | serial_inp(p, UART_DLM) << 8;

 serial_outp(p, UART_DLL, old_dll);
 serial_outp(p, UART_DLM, old_dlm);
 serial_outp(p, UART_LCR, old_lcr);

 return id;
}
