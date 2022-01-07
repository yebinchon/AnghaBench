
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int DEBUG_IRQ (char*,unsigned int) ;
 int NETX_DPMAS_INT_EN ;
 int NETX_DPMAS_INT_STAT ;
 unsigned int NETX_IRQ_HIF_CHAINED (int ) ;
 int generic_handle_irq (unsigned int) ;
 int readl (int ) ;

__attribute__((used)) static void
netx_hif_demux_handler(unsigned int irq_unused, struct irq_desc *desc)
{
 unsigned int irq = NETX_IRQ_HIF_CHAINED(0);
 unsigned int stat;

 stat = ((readl(NETX_DPMAS_INT_EN) &
  readl(NETX_DPMAS_INT_STAT)) >> 24) & 0x1f;

 while (stat) {
  if (stat & 1) {
   DEBUG_IRQ("handling irq %d\n", irq);
   generic_handle_irq(irq);
  }
  irq++;
  stat >>= 1;
 }
}
