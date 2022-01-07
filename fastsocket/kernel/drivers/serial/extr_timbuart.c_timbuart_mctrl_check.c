
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct uart_port {TYPE_2__* state; scalar_t__ membase; } ;
struct TYPE_3__ {int delta_msr_wait; } ;
struct TYPE_4__ {TYPE_1__ port; } ;


 int CTS_DELTA ;
 scalar_t__ TIMBUART_ISR ;
 unsigned int TIOCM_CTS ;
 int iowrite32 (int,scalar_t__) ;
 unsigned int timbuart_get_mctrl (struct uart_port*) ;
 int uart_handle_cts_change (struct uart_port*,unsigned int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void timbuart_mctrl_check(struct uart_port *port, u32 isr, u32 *ier)
{
 unsigned int cts;

 if (isr & CTS_DELTA) {

  iowrite32(CTS_DELTA, port->membase + TIMBUART_ISR);
  cts = timbuart_get_mctrl(port);
  uart_handle_cts_change(port, cts & TIOCM_CTS);
  wake_up_interruptible(&port->state->port.delta_msr_wait);
 }

 *ier |= CTS_DELTA;
}
