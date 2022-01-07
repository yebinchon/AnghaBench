
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; int (* serial_in ) (struct uart_port*,int) ;scalar_t__ membase; } ;
struct uart_8250_port {int lcr; } ;


 int UART_IER ;
 int UART_LCR ;
 int UART_TX ;
 int map_8250_out_reg (struct uart_port*,int) ;
 int stub1 (struct uart_port*,int) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void dwapb_serial_out(struct uart_port *p, int offset, int value)
{
 int save_offset = offset;
 offset = map_8250_out_reg(p, offset) << p->regshift;


 if (save_offset == UART_LCR) {
  struct uart_8250_port *up = (struct uart_8250_port *)p;
  up->lcr = value;
 }
 writeb(value, p->membase + offset);


 if (save_offset == UART_TX || save_offset == UART_IER)
  value = p->serial_in(p, UART_IER);
}
