
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int RX_IRQ (struct uart_port*) ;
 int disable_irq (int ) ;

__attribute__((used)) static void clps711xuart_stop_rx(struct uart_port *port)
{
 disable_irq(RX_IRQ(port));
}
