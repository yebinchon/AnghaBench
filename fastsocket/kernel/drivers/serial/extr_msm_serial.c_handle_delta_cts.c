
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cts; } ;
struct uart_port {TYPE_3__* state; TYPE_1__ icount; } ;
struct TYPE_5__ {int delta_msr_wait; } ;
struct TYPE_6__ {TYPE_2__ port; } ;


 int UART_CR ;
 int UART_CR_CMD_RESET_CTS ;
 int msm_write (struct uart_port*,int ,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void handle_delta_cts(struct uart_port *port)
{
 msm_write(port, UART_CR_CMD_RESET_CTS, UART_CR);
 port->icount.cts++;
 wake_up_interruptible(&port->state->port.delta_msr_wait);
}
