
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pq2ads_pci_pic {int host; TYPE_1__* regs; } ;
struct irq_desc {struct pq2ads_pci_pic* handler_data; } ;
struct TYPE_2__ {int mask; int stat; } ;


 int generic_handle_irq (int) ;
 int in_be32 (int *) ;
 int irq_linear_revmap (int ,int) ;

__attribute__((used)) static void pq2ads_pci_irq_demux(unsigned int irq, struct irq_desc *desc)
{
 struct pq2ads_pci_pic *priv = desc->handler_data;
 u32 stat, mask, pend;
 int bit;

 for (;;) {
  stat = in_be32(&priv->regs->stat);
  mask = in_be32(&priv->regs->mask);

  pend = stat & ~mask;

  if (!pend)
   break;

  for (bit = 0; pend != 0; ++bit, pend <<= 1) {
   if (pend & 0x80000000) {
    int virq = irq_linear_revmap(priv->host, bit);
    generic_handle_irq(virq);
   }
  }
 }
}
