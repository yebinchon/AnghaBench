
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int CR ;
 int CR_ENA_RX ;
 int CR_ENA_TX ;
 int CR_RES_RX ;
 int CR_RES_TX ;
 int IMR_RXRDY ;
 int IMR_TXRDY ;
 int OPCR ;
 int WRITE_SC (struct uart_port*,int ,int ) ;
 int WRITE_SC_PORT (struct uart_port*,int ,int) ;
 int sc26xx_disable_irq (struct uart_port*,int) ;
 int sc26xx_enable_irq (struct uart_port*,int) ;

__attribute__((used)) static int sc26xx_startup(struct uart_port *port)
{
 sc26xx_disable_irq(port, IMR_TXRDY | IMR_RXRDY);
 WRITE_SC(port, OPCR, 0);


 WRITE_SC_PORT(port, CR, CR_RES_RX);
 WRITE_SC_PORT(port, CR, CR_RES_TX);


 WRITE_SC_PORT(port, CR, CR_ENA_TX | CR_ENA_RX);


 sc26xx_enable_irq(port, IMR_RXRDY);
 return 0;
}
