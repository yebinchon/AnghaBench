
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read_status_mask; } ;
struct uart_sio_port {int ier; TYPE_1__ port; } ;
struct uart_port {int dummy; } ;


 int UART_IER ;
 int UART_IER_RLSI ;
 int UART_LSR_DR ;
 int serial_out (struct uart_sio_port*,int ,int ) ;

__attribute__((used)) static void m32r_sio_stop_rx(struct uart_port *port)
{
 struct uart_sio_port *up = (struct uart_sio_port *)port;

 up->ier &= ~UART_IER_RLSI;
 up->port.read_status_mask &= ~UART_LSR_DR;
 serial_out(up, UART_IER, up->ier);
}
