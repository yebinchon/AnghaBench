
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int capabilities; } ;


 int UART_CAP_EFR ;
 int UART_CAP_SLEEP ;
 int UART_EFR ;
 int UART_EFR_ECB ;
 int UART_IER ;
 int UART_IERX_SLEEP ;
 int UART_LCR ;
 int serial_outp (struct uart_8250_port*,int ,int) ;

__attribute__((used)) static void serial8250_set_sleep(struct uart_8250_port *p, int sleep)
{
 if (p->capabilities & UART_CAP_SLEEP) {
  if (p->capabilities & UART_CAP_EFR) {
   serial_outp(p, UART_LCR, 0xBF);
   serial_outp(p, UART_EFR, UART_EFR_ECB);
   serial_outp(p, UART_LCR, 0);
  }
  serial_outp(p, UART_IER, sleep ? UART_IERX_SLEEP : 0);
  if (p->capabilities & UART_CAP_EFR) {
   serial_outp(p, UART_LCR, 0xBF);
   serial_outp(p, UART_EFR, 0);
   serial_outp(p, UART_LCR, 0);
  }
 }
}
