
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int ATMEL_US_CTSIC ;
 int ATMEL_US_DCDIC ;
 int ATMEL_US_DSRIC ;
 int ATMEL_US_RIIC ;
 int UART_PUT_IER (struct uart_port*,int) ;

__attribute__((used)) static void atmel_enable_ms(struct uart_port *port)
{
 UART_PUT_IER(port, ATMEL_US_RIIC | ATMEL_US_DSRIC
   | ATMEL_US_DCDIC | ATMEL_US_CTSIC);
}
