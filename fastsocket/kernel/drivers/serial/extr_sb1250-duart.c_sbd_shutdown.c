
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int irq; } ;
struct sbd_port {int tx_stopped; TYPE_1__ port; } ;


 int M_DUART_RX_DIS ;
 int M_DUART_TX_DIS ;
 int R_DUART_CMD ;
 int free_irq (int ,struct sbd_port*) ;
 struct sbd_port* to_sport (struct uart_port*) ;
 int write_sbdchn (struct sbd_port*,int ,int) ;

__attribute__((used)) static void sbd_shutdown(struct uart_port *uport)
{
 struct sbd_port *sport = to_sport(uport);

 write_sbdchn(sport, R_DUART_CMD, M_DUART_TX_DIS | M_DUART_RX_DIS);
 sport->tx_stopped = 1;
 free_irq(sport->port.irq, sport);
}
