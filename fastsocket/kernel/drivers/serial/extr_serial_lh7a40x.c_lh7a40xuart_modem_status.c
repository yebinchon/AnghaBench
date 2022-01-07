
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uart_port_lh7a40x {unsigned int statusPrev; } ;
struct TYPE_4__ {int dsr; } ;
struct uart_port {TYPE_3__* state; TYPE_1__ icount; } ;
struct TYPE_5__ {int delta_msr_wait; } ;
struct TYPE_6__ {TYPE_2__ port; } ;


 int BIT_SET (struct uart_port*,int ,int ) ;
 unsigned int CTS ;
 unsigned int DCD ;
 unsigned int DSR ;
 int MSEOI ;
 int UART_R_RAWISR ;
 int UART_R_STATUS ;
 unsigned int UR (struct uart_port*,int ) ;
 int uart_handle_cts_change (struct uart_port*,unsigned int) ;
 int uart_handle_dcd_change (struct uart_port*,unsigned int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void lh7a40xuart_modem_status (struct uart_port* port)
{
 unsigned int status = UR (port, UART_R_STATUS);
 unsigned int delta
  = status ^ ((struct uart_port_lh7a40x*) port)->statusPrev;

 BIT_SET (port, UART_R_RAWISR, MSEOI);

 if (!delta)
  return;

 ((struct uart_port_lh7a40x*) port)->statusPrev = status;

 if (delta & DCD)
  uart_handle_dcd_change (port, status & DCD);

 if (delta & DSR)
  ++port->icount.dsr;

 if (delta & CTS)
  uart_handle_cts_change (port, status & CTS);

 wake_up_interruptible (&port->state->port.delta_msr_wait);
}
