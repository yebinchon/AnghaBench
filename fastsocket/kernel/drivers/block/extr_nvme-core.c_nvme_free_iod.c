
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_iod {int npages; int first_dma; } ;
struct nvme_dev {int prp_page_pool; int prp_small_pool; } ;
typedef int dma_addr_t ;
typedef int __le64 ;


 int PAGE_SIZE ;
 int dma_pool_free (int ,int *,int ) ;
 int ** iod_list (struct nvme_iod*) ;
 int kfree (struct nvme_iod*) ;
 int le64_to_cpu (int ) ;

void nvme_free_iod(struct nvme_dev *dev, struct nvme_iod *iod)
{
 const int last_prp = PAGE_SIZE / 8 - 1;
 int i;
 __le64 **list = iod_list(iod);
 dma_addr_t prp_dma = iod->first_dma;

 if (iod->npages == 0)
  dma_pool_free(dev->prp_small_pool, list[0], prp_dma);
 for (i = 0; i < iod->npages; i++) {
  __le64 *prp_list = list[i];
  dma_addr_t next_prp_dma = le64_to_cpu(prp_list[last_prp]);
  dma_pool_free(dev->prp_page_pool, prp_list, prp_dma);
  prp_dma = next_prp_dma;
 }
 kfree(iod);
}
