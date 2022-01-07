
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct uart_txx9_port {TYPE_1__ port; } ;
struct uart_port {int dummy; } ;


 int TXX9_SIDICR ;
 int TXX9_SIFCR ;
 int TXX9_SIFCR_RDIL_1 ;
 int TXX9_SIFCR_SWRST ;
 int TXX9_SIFCR_TDIL_MAX ;
 int TXX9_SIFLCR ;
 int TXX9_SIFLCR_RTSTL_MAX ;
 int TXX9_SILCR ;
 int TXX9_SILCR_SCS_IMCLK_BG ;
 int TXX9_SILCR_SCS_SCLK_BG ;
 int TXX9_SILCR_UMODE_8BIT ;
 int TXX9_SILCR_USBL_1BIT ;
 int UPF_TXX9_USE_SCLK ;
 int mmiowb () ;
 int sio_in (struct uart_txx9_port*,int ) ;
 int sio_out (struct uart_txx9_port*,int ,int) ;
 int sio_quot_set (struct uart_txx9_port*,int ) ;
 int sio_set (struct uart_txx9_port*,int ,int) ;
 struct uart_txx9_port* to_uart_txx9_port (struct uart_port*) ;
 int uart_get_divisor (struct uart_port*,int) ;
 int udelay (int) ;

__attribute__((used)) static void serial_txx9_initialize(struct uart_port *port)
{
 struct uart_txx9_port *up = to_uart_txx9_port(port);
 unsigned int tmout = 10000;

 sio_out(up, TXX9_SIFCR, TXX9_SIFCR_SWRST);


 mmiowb();
 udelay(1);
 while ((sio_in(up, TXX9_SIFCR) & TXX9_SIFCR_SWRST) && --tmout)
  udelay(1);

 sio_set(up, TXX9_SIFCR,
  TXX9_SIFCR_TDIL_MAX | TXX9_SIFCR_RDIL_1);

 sio_out(up, TXX9_SILCR,
  TXX9_SILCR_UMODE_8BIT | TXX9_SILCR_USBL_1BIT |
  ((up->port.flags & UPF_TXX9_USE_SCLK) ?
   TXX9_SILCR_SCS_SCLK_BG : TXX9_SILCR_SCS_IMCLK_BG));
 sio_quot_set(up, uart_get_divisor(port, 9600));
 sio_out(up, TXX9_SIFLCR, TXX9_SIFLCR_RTSTL_MAX );
 sio_out(up, TXX9_SIDICR, 0);
}
