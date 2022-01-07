
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct lpfc_hba {TYPE_1__* hbqs; } ;
struct hbq_dmabuf {int tag; } ;
struct TYPE_2__ {int (* hbq_free_buffer ) (struct lpfc_hba*,struct hbq_dmabuf*) ;} ;


 scalar_t__ lpfc_sli_hbq_to_firmware (struct lpfc_hba*,size_t,struct hbq_dmabuf*) ;
 int stub1 (struct lpfc_hba*,struct hbq_dmabuf*) ;

void
lpfc_sli_free_hbq(struct lpfc_hba *phba, struct hbq_dmabuf *hbq_buffer)
{
 uint32_t hbqno;

 if (hbq_buffer) {
  hbqno = hbq_buffer->tag >> 16;
  if (lpfc_sli_hbq_to_firmware(phba, hbqno, hbq_buffer))
   (phba->hbqs[hbqno].hbq_free_buffer)(phba, hbq_buffer);
 }
}
