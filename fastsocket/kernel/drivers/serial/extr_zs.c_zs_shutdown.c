
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zs_scc {int irq_guard; int zlock; } ;
struct TYPE_2__ {int irq; } ;
struct zs_port {TYPE_1__ port; int * regs; struct zs_scc* scc; } ;
struct uart_port {int dummy; } ;


 int R3 ;
 int R5 ;
 int RxENABLE ;
 int atomic_add_return (int,int *) ;
 int free_irq (int ,struct zs_scc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct zs_port* to_zport (struct uart_port*) ;
 int write_zsreg (struct zs_port*,int ,int ) ;

__attribute__((used)) static void zs_shutdown(struct uart_port *uport)
{
 struct zs_port *zport = to_zport(uport);
 struct zs_scc *scc = zport->scc;
 unsigned long flags;
 int irq_guard;

 spin_lock_irqsave(&scc->zlock, flags);

 zport->regs[3] &= ~RxENABLE;
 write_zsreg(zport, R5, zport->regs[5]);
 write_zsreg(zport, R3, zport->regs[3]);

 spin_unlock_irqrestore(&scc->zlock, flags);

 irq_guard = atomic_add_return(-1, &scc->irq_guard);
 if (!irq_guard)
  free_irq(zport->port.irq, scc);
}
