
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ohci {int dev; } ;
struct dma_trm_ctx {int type; int ctx; int num_desc; int task; scalar_t__ cmdPtr; scalar_t__ ctrlClear; scalar_t__ ctrlSet; int lock; int ** prg_cpu; int * prg_bus; int * prg_pool; struct ti_ohci* ohci; } ;
struct at_dma_prg {int dummy; } ;
typedef enum context_type { ____Placeholder_context_type } context_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 scalar_t__ OHCI1394_ContextCommandPtr ;
 scalar_t__ OHCI1394_ContextControlClear ;
 scalar_t__ OHCI1394_ContextControlSet ;
 int PRINT (int ,char*,char*) ;
 int dma_trm_tasklet ;
 int free_dma_trm_ctx (struct dma_trm_ctx*) ;
 void* kzalloc (int,int ) ;
 int memset (int *,int ,int) ;
 int * pci_pool_alloc (int *,int ,int *) ;
 int * pci_pool_create (char*,int ,int,int,int ) ;
 int spin_lock_init (int *) ;
 int sprintf (char*,char*,...) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int
alloc_dma_trm_ctx(struct ti_ohci *ohci, struct dma_trm_ctx *d,
    enum context_type type, int ctx, int num_desc,
    int context_base)
{
 int i, len;
 static char pool_name[20];
 static int num_allocs=0;

 d->ohci = ohci;
 d->type = type;
 d->ctx = ctx;
 d->num_desc = num_desc;
 d->ctrlSet = 0;
 d->ctrlClear = 0;
 d->cmdPtr = 0;

 d->prg_cpu = kzalloc(d->num_desc * sizeof(*d->prg_cpu), GFP_KERNEL);
 d->prg_bus = kzalloc(d->num_desc * sizeof(*d->prg_bus), GFP_KERNEL);

 if (d->prg_cpu == ((void*)0) || d->prg_bus == ((void*)0)) {
  PRINT(KERN_ERR, "Failed to allocate %s", "AT DMA prg");
  free_dma_trm_ctx(d);
  return -ENOMEM;
 }

 len = sprintf(pool_name, "ohci1394_trm_prg");
 sprintf(pool_name+len, "%d", num_allocs);
 d->prg_pool = pci_pool_create(pool_name, ohci->dev,
    sizeof(struct at_dma_prg), 4, 0);
 if (d->prg_pool == ((void*)0)) {
  PRINT(KERN_ERR, "pci_pool_create failed for %s", pool_name);
  free_dma_trm_ctx(d);
  return -ENOMEM;
 }
 num_allocs++;

 for (i = 0; i < d->num_desc; i++) {
  d->prg_cpu[i] = pci_pool_alloc(d->prg_pool, GFP_KERNEL, d->prg_bus+i);

                if (d->prg_cpu[i] != ((void*)0)) {
                        memset(d->prg_cpu[i], 0, sizeof(struct at_dma_prg));
  } else {
   PRINT(KERN_ERR,
         "Failed to allocate %s", "AT DMA prg");
   free_dma_trm_ctx(d);
   return -ENOMEM;
  }
 }

        spin_lock_init(&d->lock);


 d->ctrlSet = context_base + OHCI1394_ContextControlSet;
 d->ctrlClear = context_base + OHCI1394_ContextControlClear;
 d->cmdPtr = context_base + OHCI1394_ContextCommandPtr;
 tasklet_init(&d->task, dma_trm_tasklet, (unsigned long)d);
 return 0;
}
