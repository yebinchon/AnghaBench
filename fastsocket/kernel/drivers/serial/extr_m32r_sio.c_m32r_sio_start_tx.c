
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tx; } ;
struct TYPE_6__ {TYPE_2__ icount; TYPE_1__* state; } ;
struct uart_sio_port {int ier; TYPE_3__ port; } ;
struct uart_port {int dummy; } ;
struct circ_buf {int* buf; size_t tail; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;


 int UART_EMPTY ;
 int UART_IER ;
 int UART_IER_THRI ;
 int UART_LSR ;
 int UART_TX ;
 int UART_XMIT_SIZE ;
 int serial_in (struct uart_sio_port*,int ) ;
 int serial_out (struct uart_sio_port*,int ,int) ;

__attribute__((used)) static void m32r_sio_start_tx(struct uart_port *port)
{
 struct uart_sio_port *up = (struct uart_sio_port *)port;

 if (!(up->ier & UART_IER_THRI)) {
  up->ier |= UART_IER_THRI;
  serial_out(up, UART_IER, up->ier);
 }

}
