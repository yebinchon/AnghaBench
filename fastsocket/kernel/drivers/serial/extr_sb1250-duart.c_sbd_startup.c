
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int line; } ;
struct TYPE_2__ {int irq; } ;
struct sbd_port {int tx_stopped; TYPE_1__ port; } ;


 int IRQF_SHARED ;
 int M_DUART_IMR_IN ;
 int M_DUART_IMR_RX ;
 unsigned int M_DUART_RX_EN ;
 unsigned int M_DUART_RX_IRQ_SEL_RXFULL ;
 unsigned int M_DUART_TX_DIS ;
 unsigned int M_DUART_TX_IRQ_SEL_TXEMPT ;
 int R_DUART_CMD ;
 int R_DUART_IMRREG (int) ;
 int R_DUART_INCHREG (int) ;
 int R_DUART_MODE_REG_1 ;
 unsigned int V_DUART_MISC_CMD_RESET_BREAK_INT ;
 unsigned int read_sbdchn (struct sbd_port*,int ) ;
 int read_sbdshr (struct sbd_port*,int ) ;
 int request_irq (int ,int ,int ,char*,struct sbd_port*) ;
 int sbd_interrupt ;
 int sbd_receive_drain (struct sbd_port*) ;
 struct sbd_port* to_sport (struct uart_port*) ;
 int write_sbdchn (struct sbd_port*,int ,unsigned int) ;
 int write_sbdshr (struct sbd_port*,int ,int) ;

__attribute__((used)) static int sbd_startup(struct uart_port *uport)
{
 struct sbd_port *sport = to_sport(uport);
 unsigned int mode1;
 int ret;

 ret = request_irq(sport->port.irq, sbd_interrupt,
     IRQF_SHARED, "sb1250-duart", sport);
 if (ret)
  return ret;


 sbd_receive_drain(sport);


 write_sbdchn(sport, R_DUART_CMD, V_DUART_MISC_CMD_RESET_BREAK_INT);
 read_sbdshr(sport, R_DUART_INCHREG((uport->line) % 2));


 mode1 = read_sbdchn(sport, R_DUART_MODE_REG_1);
 mode1 &= ~(M_DUART_RX_IRQ_SEL_RXFULL | M_DUART_TX_IRQ_SEL_TXEMPT);
 write_sbdchn(sport, R_DUART_MODE_REG_1, mode1);


 write_sbdchn(sport, R_DUART_CMD, M_DUART_TX_DIS | M_DUART_RX_EN);
 sport->tx_stopped = 1;


 write_sbdshr(sport, R_DUART_IMRREG((uport->line) % 2),
       M_DUART_IMR_IN | M_DUART_IMR_RX);

 return 0;
}
