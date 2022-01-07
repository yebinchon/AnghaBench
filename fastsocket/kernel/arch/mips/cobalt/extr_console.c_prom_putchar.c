
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COBALT_BRD_ID_QUBE1 ;
 scalar_t__ UART_BASE ;
 scalar_t__ UART_LSR ;
 int UART_LSR_THRE ;
 scalar_t__ UART_TX ;
 scalar_t__ cobalt_board_id ;
 int readb (scalar_t__) ;
 int writeb (char,scalar_t__) ;

void prom_putchar(char c)
{
 if (cobalt_board_id <= COBALT_BRD_ID_QUBE1)
  return;

 while (!(readb(UART_BASE + UART_LSR) & UART_LSR_THRE))
  ;

 writeb(c, UART_BASE + UART_TX);
}
