
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int uint ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct mpsc_port_info {TYPE_1__ port; } ;


 int TIOCSER_TEMT ;
 scalar_t__ mpsc_sdma_tx_active (struct mpsc_port_info*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static uint mpsc_tx_empty(struct uart_port *port)
{
 struct mpsc_port_info *pi = (struct mpsc_port_info *)port;
 ulong iflags;
 uint rc;

 spin_lock_irqsave(&pi->port.lock, iflags);
 rc = mpsc_sdma_tx_active(pi) ? 0 : TIOCSER_TEMT;
 spin_unlock_irqrestore(&pi->port.lock, iflags);

 return rc;
}
