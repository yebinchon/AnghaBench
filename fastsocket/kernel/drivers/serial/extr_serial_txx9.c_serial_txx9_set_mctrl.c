
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_txx9_port {int dummy; } ;
struct uart_port {int dummy; } ;


 unsigned int TIOCM_RTS ;
 int TXX9_SIFLCR ;
 int TXX9_SIFLCR_RTSSC ;
 int sio_mask (struct uart_txx9_port*,int ,int ) ;
 int sio_set (struct uart_txx9_port*,int ,int ) ;
 struct uart_txx9_port* to_uart_txx9_port (struct uart_port*) ;

__attribute__((used)) static void serial_txx9_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct uart_txx9_port *up = to_uart_txx9_port(port);

 if (mctrl & TIOCM_RTS)
  sio_mask(up, TXX9_SIFLCR, TXX9_SIFLCR_RTSSC);
 else
  sio_set(up, TXX9_SIFLCR, TXX9_SIFLCR_RTSSC);
}
