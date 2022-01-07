
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {scalar_t__ bdeFlags; int bdeSize; } ;
struct TYPE_6__ {void* w; TYPE_1__ f; } ;
struct TYPE_7__ {TYPE_2__ tus; void* addrLow; void* addrHigh; } ;
struct lpfc_hbq_entry {void* buffer_tag; TYPE_3__ bde; } ;
struct lpfc_hba {size_t hbq_put; struct hbq_s* hbqs; } ;
struct hbq_s {int hbq_buffer_list; int hbqPutIdx; int next_hbqPutIdx; } ;
struct TYPE_8__ {int list; int phys; } ;
struct hbq_dmabuf {TYPE_4__ dbuf; void* tag; int size; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 void* le32_to_cpu (void*) ;
 int list_add_tail (int *,int *) ;
 struct lpfc_hbq_entry* lpfc_sli_next_hbq_slot (struct lpfc_hba*,size_t) ;
 void* putPaddrHigh (int ) ;
 void* putPaddrLow (int ) ;
 int readl (size_t) ;
 int writel (int ,size_t) ;

__attribute__((used)) static int
lpfc_sli_hbq_to_firmware_s3(struct lpfc_hba *phba, uint32_t hbqno,
       struct hbq_dmabuf *hbq_buf)
{
 struct lpfc_hbq_entry *hbqe;
 dma_addr_t physaddr = hbq_buf->dbuf.phys;


 hbqe = lpfc_sli_next_hbq_slot(phba, hbqno);
 if (hbqe) {
  struct hbq_s *hbqp = &phba->hbqs[hbqno];

  hbqe->bde.addrHigh = le32_to_cpu(putPaddrHigh(physaddr));
  hbqe->bde.addrLow = le32_to_cpu(putPaddrLow(physaddr));
  hbqe->bde.tus.f.bdeSize = hbq_buf->size;
  hbqe->bde.tus.f.bdeFlags = 0;
  hbqe->bde.tus.w = le32_to_cpu(hbqe->bde.tus.w);
  hbqe->buffer_tag = le32_to_cpu(hbq_buf->tag);

  hbqp->hbqPutIdx = hbqp->next_hbqPutIdx;
  writel(hbqp->hbqPutIdx, phba->hbq_put + hbqno);

  readl(phba->hbq_put + hbqno);
  list_add_tail(&hbq_buf->dbuf.list, &hbqp->hbq_buffer_list);
  return 0;
 } else
  return -ENOMEM;
}
