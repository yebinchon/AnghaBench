
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int ATMEL_US_STPBRK ;
 int ATMEL_US_STTBRK ;
 int UART_PUT_CR (struct uart_port*,int ) ;

__attribute__((used)) static void atmel_break_ctl(struct uart_port *port, int break_state)
{
 if (break_state != 0)
  UART_PUT_CR(port, ATMEL_US_STTBRK);
 else
  UART_PUT_CR(port, ATMEL_US_STPBRK);
}
