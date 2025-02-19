
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; int fifosize; int irq; } ;
struct msm_port {int imr; int name; } ;


 int IRQF_TRIGGER_HIGH ;
 int UART_CR ;
 int UART_IMR ;
 int UART_IMR_CURRENT_CTS ;
 int UART_IMR_RXLEV ;
 int UART_IMR_RXSTALE ;
 int UART_IPR ;
 unsigned int UART_IPR_RXSTALE_LAST ;
 unsigned int UART_IPR_STALE_LSB ;
 int UART_MR1 ;
 unsigned int UART_MR1_AUTO_RFR_LEVEL0 ;
 unsigned int UART_MR1_AUTO_RFR_LEVEL1 ;
 struct msm_port* UART_TO_MSM (struct uart_port*) ;
 scalar_t__ likely (int) ;
 int msm_init_clock (struct uart_port*) ;
 int msm_irq ;
 unsigned int msm_read (struct uart_port*,int ) ;
 int msm_reset (struct uart_port*) ;
 int msm_write (struct uart_port*,int,int ) ;
 int request_irq (int ,int ,int ,int ,struct uart_port*) ;
 int snprintf (int ,int,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int msm_startup(struct uart_port *port)
{
 struct msm_port *msm_port = UART_TO_MSM(port);
 unsigned int data, rfr_level;
 int ret;

 snprintf(msm_port->name, sizeof(msm_port->name),
   "msm_serial%d", port->line);

 ret = request_irq(port->irq, msm_irq, IRQF_TRIGGER_HIGH,
     msm_port->name, port);
 if (unlikely(ret))
  return ret;

 msm_init_clock(port);

 if (likely(port->fifosize > 12))
  rfr_level = port->fifosize - 12;
 else
  rfr_level = port->fifosize;


 data = msm_read(port, UART_MR1);
 data &= ~UART_MR1_AUTO_RFR_LEVEL1;
 data &= ~UART_MR1_AUTO_RFR_LEVEL0;
 data |= UART_MR1_AUTO_RFR_LEVEL1 & (rfr_level << 2);
 data |= UART_MR1_AUTO_RFR_LEVEL0 & rfr_level;
 msm_write(port, data, UART_MR1);


 data = msm_read(port, UART_IPR);
 if (unlikely(!data)) {
  data |= UART_IPR_RXSTALE_LAST;
  data |= UART_IPR_STALE_LSB;
  msm_write(port, data, UART_IPR);
 }

 msm_reset(port);

 msm_write(port, 0x05, UART_CR);


 msm_port->imr = UART_IMR_RXLEV | UART_IMR_RXSTALE |
   UART_IMR_CURRENT_CTS;
 msm_write(port, msm_port->imr, UART_IMR);

 return 0;
}
