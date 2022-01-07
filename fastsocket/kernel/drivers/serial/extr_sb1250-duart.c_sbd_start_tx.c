
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; } ;
struct sbd_port {scalar_t__ tx_stopped; } ;


 unsigned int M_DUART_IMR_TX ;
 int M_DUART_TX_EN ;
 int R_DUART_CMD ;
 int R_DUART_IMRREG (int) ;
 unsigned int read_sbdshr (struct sbd_port*,int ) ;
 struct sbd_port* to_sport (struct uart_port*) ;
 int write_sbdchn (struct sbd_port*,int ,int ) ;
 int write_sbdshr (struct sbd_port*,int ,unsigned int) ;

__attribute__((used)) static void sbd_start_tx(struct uart_port *uport)
{
 struct sbd_port *sport = to_sport(uport);
 unsigned int mask;


 mask = read_sbdshr(sport, R_DUART_IMRREG((uport->line) % 2));
 mask |= M_DUART_IMR_TX;
 write_sbdshr(sport, R_DUART_IMRREG((uport->line) % 2), mask);


 write_sbdchn(sport, R_DUART_CMD, M_DUART_TX_EN);
 sport->tx_stopped = 0;
}
