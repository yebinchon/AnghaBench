
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_port {int dummy; } ;


 int IDR_TX_INT_ENAB ;
 int INT_AND_DMA_REG ;
 int SCC_ACCESS_INIT (struct scc_port*) ;
 int SCCmod (int ,int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int scc_tx_int (int ,struct scc_port*) ;

__attribute__((used)) static void scc_enable_tx_interrupts(void *ptr)
{
 struct scc_port *port = ptr;
 unsigned long flags;
 SCC_ACCESS_INIT(port);

 local_irq_save(flags);
 SCCmod(INT_AND_DMA_REG, 0xff, IDR_TX_INT_ENAB);

 scc_tx_int (0, port);
 local_irq_restore(flags);
}
