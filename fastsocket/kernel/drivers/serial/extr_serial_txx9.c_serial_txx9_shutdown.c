
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ line; int irq; TYPE_1__* cons; int lock; int mctrl; } ;
struct uart_txx9_port {TYPE_2__ port; } ;
struct uart_port {int dummy; } ;
struct TYPE_3__ {scalar_t__ index; } ;


 int TXX9_SIDICR ;
 int TXX9_SIFCR ;
 int TXX9_SIFCR_FRSTE ;
 int TXX9_SIFCR_RFRST ;
 int TXX9_SIFCR_TFRST ;
 int TXX9_SIFLCR ;
 int TXX9_SIFLCR_RSDE ;
 int TXX9_SIFLCR_TBRK ;
 int TXX9_SIFLCR_TSDE ;
 int free_irq (int ,struct uart_txx9_port*) ;
 int serial_txx9_set_mctrl (TYPE_2__*,int ) ;
 int sio_mask (struct uart_txx9_port*,int ,int) ;
 int sio_out (struct uart_txx9_port*,int ,int ) ;
 int sio_set (struct uart_txx9_port*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_txx9_port* to_uart_txx9_port (struct uart_port*) ;

__attribute__((used)) static void serial_txx9_shutdown(struct uart_port *port)
{
 struct uart_txx9_port *up = to_uart_txx9_port(port);
 unsigned long flags;




 sio_out(up, TXX9_SIDICR, 0);

 spin_lock_irqsave(&up->port.lock, flags);
 serial_txx9_set_mctrl(&up->port, up->port.mctrl);
 spin_unlock_irqrestore(&up->port.lock, flags);




 sio_mask(up, TXX9_SIFLCR, TXX9_SIFLCR_TBRK);
 sio_set(up, TXX9_SIFCR,
  TXX9_SIFCR_TFRST | TXX9_SIFCR_RFRST | TXX9_SIFCR_FRSTE);

 sio_mask(up, TXX9_SIFCR,
   TXX9_SIFCR_TFRST | TXX9_SIFCR_RFRST | TXX9_SIFCR_FRSTE);


 sio_set(up, TXX9_SIFLCR, TXX9_SIFLCR_RSDE | TXX9_SIFLCR_TSDE);

 free_irq(up->port.irq, up);
}
