
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_port {int dummy; } ;


 int IDR_EXTSTAT_INT_ENAB ;
 int IDR_PARERR_AS_SPCOND ;
 int IDR_RX_INT_ALL ;
 int INT_AND_DMA_REG ;
 int SCC_ACCESS_INIT (struct scc_port*) ;
 int SCCmod (int ,int,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void scc_enable_rx_interrupts(void *ptr)
{
 struct scc_port *port = ptr;
 unsigned long flags;
 SCC_ACCESS_INIT(port);

 local_irq_save(flags);
 SCCmod(INT_AND_DMA_REG, 0xff,
  IDR_EXTSTAT_INT_ENAB|IDR_PARERR_AS_SPCOND|IDR_RX_INT_ALL);
 local_irq_restore(flags);
}
