
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pool_index; int free_buf; int list; int buf_paddr; int buf_vaddr; } ;
typedef TYPE_1__ uioc_t ;
struct TYPE_7__ {int kioc_semaphore; int kioc_pool_lock; int kioc_pool; TYPE_3__* dma_pool_list; } ;
typedef TYPE_2__ mraid_mmadp_t ;
struct TYPE_8__ {int lock; scalar_t__ in_use; int handle; } ;
typedef TYPE_3__ mm_dmapool_t ;


 int list_add (int *,int *) ;
 int pci_pool_free (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int up (int *) ;

__attribute__((used)) static void
mraid_mm_dealloc_kioc(mraid_mmadp_t *adp, uioc_t *kioc)
{
 mm_dmapool_t *pool;
 unsigned long flags;

 if (kioc->pool_index != -1) {
  pool = &adp->dma_pool_list[kioc->pool_index];


  spin_lock_irqsave(&pool->lock, flags);
  if (kioc->free_buf == 1)
   pci_pool_free(pool->handle, kioc->buf_vaddr,
       kioc->buf_paddr);
  else
   pool->in_use = 0;

  spin_unlock_irqrestore(&pool->lock, flags);
 }


 spin_lock_irqsave(&adp->kioc_pool_lock, flags);
 list_add(&kioc->list, &adp->kioc_pool);
 spin_unlock_irqrestore(&adp->kioc_pool_lock, flags);


 up(&adp->kioc_semaphore);

 return;
}
