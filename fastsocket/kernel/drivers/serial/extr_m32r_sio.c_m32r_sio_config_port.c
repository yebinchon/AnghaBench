
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t type; int lock; int fifosize; } ;
struct uart_sio_port {TYPE_1__ port; } ;
struct uart_port {int dummy; } ;
struct TYPE_4__ {int dfl_xmit_fifo_size; } ;


 size_t PORT_M32R_BASE ;
 size_t PORT_M32R_SIO ;
 int spin_lock_irqsave (int *,int) ;
 int spin_unlock_irqrestore (int *,int) ;
 TYPE_2__* uart_config ;

__attribute__((used)) static void m32r_sio_config_port(struct uart_port *port, int flags)
{
 struct uart_sio_port *up = (struct uart_sio_port *)port;

 spin_lock_irqsave(&up->port.lock, flags);

 up->port.type = (PORT_M32R_SIO - PORT_M32R_BASE + 1);
 up->port.fifosize = uart_config[up->port.type].dfl_xmit_fifo_size;

 spin_unlock_irqrestore(&up->port.lock, flags);
}
