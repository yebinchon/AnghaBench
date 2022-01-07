
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ id; void* pt_root; struct dma_ops_domain* priv; int flags; int mode; int lock; } ;
struct dma_ops_domain {int need_flush; int target_dev; scalar_t__ next_address; TYPE_2__** aperture; TYPE_1__ domain; } ;
struct amd_iommu {int dummy; } ;
struct TYPE_4__ {int* bitmap; } ;


 int GFP_KERNEL ;
 int PAGE_MODE_2_LEVEL ;
 int PD_DMA_OPS_MASK ;
 scalar_t__ alloc_new_range (struct amd_iommu*,struct dma_ops_domain*,int,int ) ;
 int dma_ops_domain_free (struct dma_ops_domain*) ;
 scalar_t__ domain_id_alloc () ;
 scalar_t__ get_zeroed_page (int ) ;
 struct dma_ops_domain* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct dma_ops_domain *dma_ops_domain_alloc(struct amd_iommu *iommu)
{
 struct dma_ops_domain *dma_dom;

 dma_dom = kzalloc(sizeof(struct dma_ops_domain), GFP_KERNEL);
 if (!dma_dom)
  return ((void*)0);

 spin_lock_init(&dma_dom->domain.lock);

 dma_dom->domain.id = domain_id_alloc();
 if (dma_dom->domain.id == 0)
  goto free_dma_dom;
 dma_dom->domain.mode = PAGE_MODE_2_LEVEL;
 dma_dom->domain.pt_root = (void *)get_zeroed_page(GFP_KERNEL);
 dma_dom->domain.flags = PD_DMA_OPS_MASK;
 dma_dom->domain.priv = dma_dom;
 if (!dma_dom->domain.pt_root)
  goto free_dma_dom;

 dma_dom->need_flush = 0;
 dma_dom->target_dev = 0xffff;

 if (alloc_new_range(iommu, dma_dom, 1, GFP_KERNEL))
  goto free_dma_dom;





 dma_dom->aperture[0]->bitmap[0] = 1;
 dma_dom->next_address = 0;


 return dma_dom;

free_dma_dom:
 dma_ops_domain_free(dma_dom);

 return ((void*)0);
}
