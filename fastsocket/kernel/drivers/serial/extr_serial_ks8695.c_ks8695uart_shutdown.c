
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int KS8695_IRQ_UART_LINE_STATUS ;
 int KS8695_IRQ_UART_MODEM_STATUS ;
 int KS8695_IRQ_UART_RX ;
 int KS8695_IRQ_UART_TX ;
 int UART_GET_FCR (struct uart_port*) ;
 int UART_GET_LCR (struct uart_port*) ;
 int UART_PUT_FCR (struct uart_port*,int) ;
 int UART_PUT_LCR (struct uart_port*,int) ;
 int URFC_URFE ;
 int URLC_URSBC ;
 int free_irq (int ,struct uart_port*) ;

__attribute__((used)) static void ks8695uart_shutdown(struct uart_port *port)
{



 free_irq(KS8695_IRQ_UART_RX, port);
 free_irq(KS8695_IRQ_UART_TX, port);
 free_irq(KS8695_IRQ_UART_MODEM_STATUS, port);
 free_irq(KS8695_IRQ_UART_LINE_STATUS, port);


 UART_PUT_LCR(port, UART_GET_LCR(port) & ~URLC_URSBC);
 UART_PUT_FCR(port, UART_GET_FCR(port) & ~URFC_URFE);
}
