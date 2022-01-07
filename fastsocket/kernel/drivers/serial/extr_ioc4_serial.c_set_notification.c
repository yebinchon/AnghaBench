
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ioc4_port {int ip_notify; int ip_sscr; int ip_ienb; TYPE_1__* ip_serial_regs; struct hooks* ip_hooks; } ;
struct hooks {int intr_rx_timer; int intr_rx_high; int intr_tx_explicit; int intr_delta_dcd; int intr_delta_cts; int intr_tx_mt; } ;
struct TYPE_2__ {int sscr; } ;


 int BUG_ON (int) ;
 int IOC4_SSCR_DMA_EN ;
 int IOC4_SSCR_RX_RING_DCD ;
 int N_DATA_READY ;
 int N_DCTS ;
 int N_DDCD ;
 int N_OUTPUT_LOWAT ;
 int disable_intrs (struct ioc4_port*,int) ;
 int enable_intrs (struct ioc4_port*,int) ;
 int writel (int,int *) ;

__attribute__((used)) static int set_notification(struct ioc4_port *port, int mask, int set_on)
{
 struct hooks *hooks = port->ip_hooks;
 uint32_t intrbits, sscrbits;

 BUG_ON(!mask);

 intrbits = sscrbits = 0;

 if (mask & N_DATA_READY)
  intrbits |= (hooks->intr_rx_timer | hooks->intr_rx_high);
 if (mask & N_OUTPUT_LOWAT)
  intrbits |= hooks->intr_tx_explicit;
 if (mask & N_DDCD) {
  intrbits |= hooks->intr_delta_dcd;
  sscrbits |= IOC4_SSCR_RX_RING_DCD;
 }
 if (mask & N_DCTS)
  intrbits |= hooks->intr_delta_cts;

 if (set_on) {
  enable_intrs(port, intrbits);
  port->ip_notify |= mask;
  port->ip_sscr |= sscrbits;
 } else {
  disable_intrs(port, intrbits);
  port->ip_notify &= ~mask;
  port->ip_sscr &= ~sscrbits;
 }





 if (port->ip_notify & (N_DATA_READY | N_DDCD))
  port->ip_sscr |= IOC4_SSCR_DMA_EN;
 else if (!(port->ip_ienb & hooks->intr_tx_mt))
  port->ip_sscr &= ~IOC4_SSCR_DMA_EN;

 writel(port->ip_sscr, &port->ip_serial_regs->sscr);
 return 0;
}
