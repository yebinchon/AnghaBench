
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sunsu_port {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int UART_IIR ;
 int UART_IIR_NO_INT ;
 int UART_LSR ;
 unsigned char UART_LSR_BI ;
 unsigned char UART_LSR_DR ;
 int receive_kbd_ms_chars (struct uart_sunsu_port*,int) ;
 int serial_in (struct uart_sunsu_port*,int ) ;
 unsigned char serial_inp (struct uart_sunsu_port*,int ) ;

__attribute__((used)) static irqreturn_t sunsu_kbd_ms_interrupt(int irq, void *dev_id)
{
 struct uart_sunsu_port *up = dev_id;

 if (!(serial_in(up, UART_IIR) & UART_IIR_NO_INT)) {
  unsigned char status = serial_inp(up, UART_LSR);

  if ((status & UART_LSR_DR) || (status & UART_LSR_BI))
   receive_kbd_ms_chars(up, (status & UART_LSR_BI) != 0);
 }

 return IRQ_HANDLED;
}
