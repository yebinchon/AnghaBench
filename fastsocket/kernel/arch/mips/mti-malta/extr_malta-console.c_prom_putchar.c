
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_LSR ;
 int UART_LSR_THRE ;
 int UART_TX ;
 int serial_in (int ) ;
 int serial_out (int ,char) ;

int prom_putchar(char c)
{
 while ((serial_in(UART_LSR) & UART_LSR_THRE) == 0)
  ;

 serial_out(UART_TX, c);

 return 1;
}
