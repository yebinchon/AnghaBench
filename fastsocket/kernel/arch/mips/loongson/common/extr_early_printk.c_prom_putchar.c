
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int LOONGSON_UART_BASE ;
 int UART_LSR ;
 int UART_LSR_THRE ;
 int UART_TX ;
 int ioremap_nocache (int ,int) ;
 int serial_in (int ,int ) ;
 int serial_out (int ,int ,char) ;

void prom_putchar(char c)
{
 phys_addr_t uart_base =
  (phys_addr_t) ioremap_nocache(LOONGSON_UART_BASE, 8);

 while ((serial_in(uart_base, UART_LSR) & UART_LSR_THRE) == 0)
  ;

 serial_out(uart_base, UART_TX, c);
}
