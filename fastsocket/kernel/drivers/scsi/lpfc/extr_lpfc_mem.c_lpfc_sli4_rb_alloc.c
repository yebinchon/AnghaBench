
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_hba {int lpfc_hrb_pool; int lpfc_drb_pool; } ;
struct TYPE_4__ {int phys; void* virt; } ;
struct TYPE_3__ {void* virt; int phys; } ;
struct hbq_dmabuf {int size; TYPE_2__ hbuf; TYPE_1__ dbuf; } ;


 int GFP_KERNEL ;
 int LPFC_BPL_SIZE ;
 int kfree (struct hbq_dmabuf*) ;
 struct hbq_dmabuf* kzalloc (int,int ) ;
 void* pci_pool_alloc (int ,int ,int *) ;
 int pci_pool_free (int ,void*,int ) ;

struct hbq_dmabuf *
lpfc_sli4_rb_alloc(struct lpfc_hba *phba)
{
 struct hbq_dmabuf *dma_buf;

 dma_buf = kzalloc(sizeof(struct hbq_dmabuf), GFP_KERNEL);
 if (!dma_buf)
  return ((void*)0);

 dma_buf->hbuf.virt = pci_pool_alloc(phba->lpfc_hrb_pool, GFP_KERNEL,
         &dma_buf->hbuf.phys);
 if (!dma_buf->hbuf.virt) {
  kfree(dma_buf);
  return ((void*)0);
 }
 dma_buf->dbuf.virt = pci_pool_alloc(phba->lpfc_drb_pool, GFP_KERNEL,
         &dma_buf->dbuf.phys);
 if (!dma_buf->dbuf.virt) {
  pci_pool_free(phba->lpfc_hrb_pool, dma_buf->hbuf.virt,
         dma_buf->hbuf.phys);
  kfree(dma_buf);
  return ((void*)0);
 }
 dma_buf->size = LPFC_BPL_SIZE;
 return dma_buf;
}
