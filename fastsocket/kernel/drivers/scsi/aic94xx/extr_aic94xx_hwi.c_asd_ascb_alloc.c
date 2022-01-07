
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct scb {int dummy; } ;
struct kmem_cache {int dummy; } ;
struct asd_seq_data {int tc_index_lock; } ;
struct asd_ha_struct {int scb_pool; struct asd_seq_data seq; } ;
struct TYPE_6__ {int size; int dma_handle; int vaddr; } ;
struct asd_ascb {int tc_index; TYPE_3__ dma_scb; TYPE_2__* scb; } ;
typedef int gfp_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_5__ {TYPE_1__ header; } ;


 int ASD_DPRINTK (char*) ;
 int asd_init_ascb (struct asd_ha_struct*,struct asd_ascb*) ;
 int asd_tc_index_get (struct asd_seq_data*,struct asd_ascb*) ;
 int cpu_to_le16 (int ) ;
 int dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_free (int ,int ,int ) ;
 int kmem_cache_free (struct kmem_cache*,struct asd_ascb*) ;
 struct asd_ascb* kmem_cache_zalloc (struct kmem_cache*,int ) ;
 int memset (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct asd_ascb *asd_ascb_alloc(struct asd_ha_struct *asd_ha,
           gfp_t gfp_flags)
{
 extern struct kmem_cache *asd_ascb_cache;
 struct asd_seq_data *seq = &asd_ha->seq;
 struct asd_ascb *ascb;
 unsigned long flags;

 ascb = kmem_cache_zalloc(asd_ascb_cache, gfp_flags);

 if (ascb) {
  ascb->dma_scb.size = sizeof(struct scb);
  ascb->dma_scb.vaddr = dma_pool_alloc(asd_ha->scb_pool,
           gfp_flags,
          &ascb->dma_scb.dma_handle);
  if (!ascb->dma_scb.vaddr) {
   kmem_cache_free(asd_ascb_cache, ascb);
   return ((void*)0);
  }
  memset(ascb->dma_scb.vaddr, 0, sizeof(struct scb));
  asd_init_ascb(asd_ha, ascb);

  spin_lock_irqsave(&seq->tc_index_lock, flags);
  ascb->tc_index = asd_tc_index_get(seq, ascb);
  spin_unlock_irqrestore(&seq->tc_index_lock, flags);
  if (ascb->tc_index == -1)
   goto undo;

  ascb->scb->header.index = cpu_to_le16((u16)ascb->tc_index);
 }

 return ascb;
undo:
 dma_pool_free(asd_ha->scb_pool, ascb->dma_scb.vaddr,
        ascb->dma_scb.dma_handle);
 kmem_cache_free(asd_ascb_cache, ascb);
 ASD_DPRINTK("no index for ascb\n");
 return ((void*)0);
}
