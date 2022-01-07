
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int KS8695_IRQ_UART_RX ;
 int disable_irq (int ) ;
 int rx_enable (struct uart_port*,int ) ;
 scalar_t__ rx_enabled (struct uart_port*) ;

__attribute__((used)) static void ks8695uart_stop_rx(struct uart_port *port)
{
 if (rx_enabled(port)) {
  disable_irq(KS8695_IRQ_UART_RX);
  rx_enable(port, 0);
 }
}
