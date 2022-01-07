
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int KS8695_IRQ_UART_TX ;
 int enable_irq (int ) ;
 int tx_enable (struct uart_port*,int) ;
 int tx_enabled (struct uart_port*) ;

__attribute__((used)) static void ks8695uart_start_tx(struct uart_port *port)
{
 if (!tx_enabled(port)) {
  enable_irq(KS8695_IRQ_UART_TX);
  tx_enable(port, 1);
 }
}
