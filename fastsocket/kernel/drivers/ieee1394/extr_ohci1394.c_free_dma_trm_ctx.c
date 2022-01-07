
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ohci {int dummy; } ;
struct dma_trm_ctx {int num_desc; struct ti_ohci* ohci; scalar_t__* prg_bus; scalar_t__* prg_cpu; int prg_pool; int ctx; } ;


 int DBGMSG (char*,int ) ;
 int kfree (scalar_t__*) ;
 int pci_pool_destroy (int ) ;
 int pci_pool_free (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void free_dma_trm_ctx(struct dma_trm_ctx *d)
{
 int i;
 struct ti_ohci *ohci = d->ohci;

 if (ohci == ((void*)0))
  return;

 DBGMSG("Freeing dma_trm_ctx %d", d->ctx);

 if (d->prg_cpu) {
  for (i=0; i<d->num_desc; i++)
   if (d->prg_cpu[i] && d->prg_bus[i])
    pci_pool_free(d->prg_pool, d->prg_cpu[i],
           d->prg_bus[i]);
  pci_pool_destroy(d->prg_pool);
  kfree(d->prg_cpu);
  kfree(d->prg_bus);
 }


 d->ohci = ((void*)0);
}
