
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct circ_buf {int tail; } ;
struct TYPE_4__ {int tx; } ;
struct TYPE_6__ {TYPE_1__ icount; TYPE_2__* state; } ;
struct bfin_serial_port {int tx_count; int tx_done; TYPE_3__ port; int tx_dma_channel; } ;
struct TYPE_5__ {struct circ_buf xmit; } ;


 int ETBEI ;
 int TEMT ;
 int TFI ;
 int UART_CLEAR_IER (struct bfin_serial_port*,int ) ;
 int UART_GET_LSR (struct bfin_serial_port*) ;
 int UART_PUT_LSR (struct bfin_serial_port*,int ) ;
 int UART_XMIT_SIZE ;
 int cpu_relax () ;
 int disable_dma (int ) ;

__attribute__((used)) static void bfin_serial_stop_tx(struct uart_port *port)
{
 struct bfin_serial_port *uart = (struct bfin_serial_port *)port;




 while (!(UART_GET_LSR(uart) & TEMT))
  cpu_relax();
 UART_CLEAR_IER(uart, ETBEI);

}
