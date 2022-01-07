
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int KS8695_IRQ_UART_MODEM_STATUS ;
 int disable_irq (int ) ;
 int ms_enable (struct uart_port*,int ) ;
 scalar_t__ ms_enabled (struct uart_port*) ;

__attribute__((used)) static void ks8695uart_disable_ms(struct uart_port *port)
{
 if (ms_enabled(port)) {
  disable_irq(KS8695_IRQ_UART_MODEM_STATUS);
  ms_enable(port,0);
 }
}
