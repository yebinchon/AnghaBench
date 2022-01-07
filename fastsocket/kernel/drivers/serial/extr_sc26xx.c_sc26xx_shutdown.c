
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int CR ;
 int CR_DIS_RX ;
 int CR_DIS_TX ;
 int IMR_RXRDY ;
 int IMR_TXRDY ;
 int WRITE_SC_PORT (struct uart_port*,int ,int) ;
 int sc26xx_disable_irq (struct uart_port*,int) ;

__attribute__((used)) static void sc26xx_shutdown(struct uart_port *port)
{

 sc26xx_disable_irq(port, IMR_TXRDY | IMR_RXRDY);


 WRITE_SC_PORT(port, CR, CR_DIS_TX | CR_DIS_RX);
}
