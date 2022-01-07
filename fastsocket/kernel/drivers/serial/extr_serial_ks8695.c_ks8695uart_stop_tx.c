
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int KS8695_IRQ_UART_TX ;
 int disable_irq_nosync (int ) ;
 int tx_enable (struct uart_port*,int ) ;
 scalar_t__ tx_enabled (struct uart_port*) ;

__attribute__((used)) static void ks8695uart_stop_tx(struct uart_port *port)
{
 if (tx_enabled(port)) {




  disable_irq_nosync(KS8695_IRQ_UART_TX);
  tx_enable(port, 0);
 }
}
