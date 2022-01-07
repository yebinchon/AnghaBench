
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int dsr; int rng; } ;
struct uart_port {TYPE_2__* state; TYPE_3__ icount; } ;
struct TYPE_4__ {int delta_msr_wait; } ;
struct TYPE_5__ {TYPE_1__ port; } ;


 int UART_MSR ;
 int UART_MSR_ANY_DELTA ;
 int UART_MSR_CTS ;
 int UART_MSR_DCD ;
 int UART_MSR_DCTS ;
 int UART_MSR_DDCD ;
 int UART_MSR_DDSR ;
 int UART_MSR_TERI ;
 int siu_read (struct uart_port*,int ) ;
 int uart_handle_cts_change (struct uart_port*,int) ;
 int uart_handle_dcd_change (struct uart_port*,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static inline void check_modem_status(struct uart_port *port)
{
 uint8_t msr;

 msr = siu_read(port, UART_MSR);
 if ((msr & UART_MSR_ANY_DELTA) == 0)
  return;
 if (msr & UART_MSR_DDCD)
  uart_handle_dcd_change(port, msr & UART_MSR_DCD);
 if (msr & UART_MSR_TERI)
  port->icount.rng++;
 if (msr & UART_MSR_DDSR)
  port->icount.dsr++;
 if (msr & UART_MSR_DCTS)
  uart_handle_cts_change(port, msr & UART_MSR_CTS);

 wake_up_interruptible(&port->state->port.delta_msr_wait);
}
