
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tx_enabled ;
struct uart_port {int dummy; } ;
struct s3c24xx_uart_port {scalar_t__ rx_claimed; int rx_irq; scalar_t__ tx_claimed; int tx_irq; } ;
typedef int rx_enabled ;


 int free_irq (int ,struct s3c24xx_uart_port*) ;
 struct s3c24xx_uart_port* to_ourport (struct uart_port*) ;

__attribute__((used)) static void s3c24xx_serial_shutdown(struct uart_port *port)
{
 struct s3c24xx_uart_port *ourport = to_ourport(port);

 if (ourport->tx_claimed) {
  free_irq(ourport->tx_irq, ourport);
  tx_enabled(port) = 0;
  ourport->tx_claimed = 0;
 }

 if (ourport->rx_claimed) {
  free_irq(ourport->rx_irq, ourport);
  ourport->rx_claimed = 0;
  rx_enabled(port) = 0;
 }
}
