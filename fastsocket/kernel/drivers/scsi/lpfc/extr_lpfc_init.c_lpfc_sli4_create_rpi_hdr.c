
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_rpi_hdr {int page_count; int start_rpi; int list; int len; struct lpfc_dmabuf* dmabuf; } ;
struct TYPE_4__ {int rpi_base; int max_rpi; } ;
struct TYPE_5__ {int next_rpi; int lpfc_rpi_hdr_list; TYPE_1__ max_cfg_param; scalar_t__ extents_in_use; int rpi_hdrs_in_use; } ;
struct lpfc_hba {TYPE_3__* pcidev; int hbalock; TYPE_2__ sli4_hba; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct TYPE_6__ {int dev; } ;


 int GFP_KERNEL ;
 int IS_ALIGNED (int ,int ) ;
 int LPFC_HDR_TEMPLATE_SIZE ;
 int LPFC_RPI_HDR_COUNT ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (struct lpfc_dmabuf*) ;
 void* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memset (int ,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

struct lpfc_rpi_hdr *
lpfc_sli4_create_rpi_hdr(struct lpfc_hba *phba)
{
 uint16_t rpi_limit, curr_rpi_range;
 struct lpfc_dmabuf *dmabuf;
 struct lpfc_rpi_hdr *rpi_hdr;
 uint32_t rpi_count;






 if (!phba->sli4_hba.rpi_hdrs_in_use)
  return ((void*)0);
 if (phba->sli4_hba.extents_in_use)
  return ((void*)0);


 rpi_limit = phba->sli4_hba.max_cfg_param.rpi_base +
 phba->sli4_hba.max_cfg_param.max_rpi - 1;

 spin_lock_irq(&phba->hbalock);





 curr_rpi_range = phba->sli4_hba.next_rpi;
 spin_unlock_irq(&phba->hbalock);






 if ((curr_rpi_range + (LPFC_RPI_HDR_COUNT - 1)) > rpi_limit)
  rpi_count = rpi_limit - curr_rpi_range;
 else
  rpi_count = LPFC_RPI_HDR_COUNT;

 if (!rpi_count)
  return ((void*)0);




 dmabuf = kzalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
 if (!dmabuf)
  return ((void*)0);

 dmabuf->virt = dma_alloc_coherent(&phba->pcidev->dev,
       LPFC_HDR_TEMPLATE_SIZE,
       &dmabuf->phys,
       GFP_KERNEL);
 if (!dmabuf->virt) {
  rpi_hdr = ((void*)0);
  goto err_free_dmabuf;
 }

 memset(dmabuf->virt, 0, LPFC_HDR_TEMPLATE_SIZE);
 if (!IS_ALIGNED(dmabuf->phys, LPFC_HDR_TEMPLATE_SIZE)) {
  rpi_hdr = ((void*)0);
  goto err_free_coherent;
 }


 rpi_hdr = kzalloc(sizeof(struct lpfc_rpi_hdr), GFP_KERNEL);
 if (!rpi_hdr)
  goto err_free_coherent;

 rpi_hdr->dmabuf = dmabuf;
 rpi_hdr->len = LPFC_HDR_TEMPLATE_SIZE;
 rpi_hdr->page_count = 1;
 spin_lock_irq(&phba->hbalock);


 rpi_hdr->start_rpi = curr_rpi_range;
 list_add_tail(&rpi_hdr->list, &phba->sli4_hba.lpfc_rpi_hdr_list);





 phba->sli4_hba.next_rpi += rpi_count;
 spin_unlock_irq(&phba->hbalock);
 return rpi_hdr;

 err_free_coherent:
 dma_free_coherent(&phba->pcidev->dev, LPFC_HDR_TEMPLATE_SIZE,
     dmabuf->virt, dmabuf->phys);
 err_free_dmabuf:
 kfree(dmabuf);
 return ((void*)0);
}
