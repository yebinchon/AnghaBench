
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_3__ {int lock; } ;
struct dz_port {TYPE_1__ port; } ;


 int dz_start_tx (TYPE_1__*) ;
 int dz_stop_tx (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dz_port* to_dport (struct uart_port*) ;

__attribute__((used)) static void dz_pm(struct uart_port *uport, unsigned int state,
    unsigned int oldstate)
{
 struct dz_port *dport = to_dport(uport);
 unsigned long flags;

 spin_lock_irqsave(&dport->port.lock, flags);
 if (state < 3)
  dz_start_tx(&dport->port);
 else
  dz_stop_tx(&dport->port);
 spin_unlock_irqrestore(&dport->port.lock, flags);
}
