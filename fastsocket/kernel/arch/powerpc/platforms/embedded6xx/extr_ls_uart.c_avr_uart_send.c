
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UART_TX ;
 scalar_t__ avr_addr ;
 int avr_clock ;
 int out_8 (scalar_t__,char const) ;

void avr_uart_send(const char c)
{
 if (!avr_addr || !avr_clock)
  return;

 out_8(avr_addr + UART_TX, c);
 out_8(avr_addr + UART_TX, c);
 out_8(avr_addr + UART_TX, c);
 out_8(avr_addr + UART_TX, c);
}
