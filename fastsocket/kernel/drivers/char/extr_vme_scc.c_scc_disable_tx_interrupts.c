
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct scc_port {TYPE_2__ gs; } ;


 int GS_TX_INTEN ;
 int IDR_TX_INT_ENAB ;
 int INT_AND_DMA_REG ;
 int SCC_ACCESS_INIT (struct scc_port*) ;
 int SCCmod (int ,int ,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void scc_disable_tx_interrupts(void *ptr)
{
 struct scc_port *port = ptr;
 unsigned long flags;
 SCC_ACCESS_INIT(port);

 local_irq_save(flags);
 SCCmod(INT_AND_DMA_REG, ~IDR_TX_INT_ENAB, 0);
 port->gs.port.flags &= ~GS_TX_INTEN;
 local_irq_restore(flags);
}
