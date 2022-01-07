
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tc_index_lock; } ;
struct asd_ha_struct {int scb_pool; TYPE_2__ seq; } ;
struct TYPE_3__ {int dma_handle; int vaddr; } ;
struct asd_ascb {TYPE_1__ dma_scb; struct asd_ha_struct* ha; int tc_index; int list; } ;


 int BUG_ON (int) ;
 int asd_ascb_cache ;
 int asd_tc_index_release (TYPE_2__*,int ) ;
 int dma_pool_free (int ,int ,int ) ;
 int kmem_cache_free (int ,struct asd_ascb*) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void asd_ascb_free(struct asd_ascb *ascb)
{
 if (ascb) {
  struct asd_ha_struct *asd_ha = ascb->ha;
  unsigned long flags;

  BUG_ON(!list_empty(&ascb->list));
  spin_lock_irqsave(&ascb->ha->seq.tc_index_lock, flags);
  asd_tc_index_release(&ascb->ha->seq, ascb->tc_index);
  spin_unlock_irqrestore(&ascb->ha->seq.tc_index_lock, flags);
  dma_pool_free(asd_ha->scb_pool, ascb->dma_scb.vaddr,
         ascb->dma_scb.dma_handle);
  kmem_cache_free(asd_ascb_cache, ascb);
 }
}
