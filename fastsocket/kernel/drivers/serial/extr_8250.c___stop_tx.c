
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int ier; } ;


 int UART_IER ;
 int UART_IER_THRI ;
 int serial_out (struct uart_8250_port*,int ,int) ;

__attribute__((used)) static inline void __stop_tx(struct uart_8250_port *p)
{
 if (p->ier & UART_IER_THRI) {
  p->ier &= ~UART_IER_THRI;
  serial_out(p, UART_IER, p->ier);
 }
}
