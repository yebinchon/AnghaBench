
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct lpfc_hbq_entry {int dummy; } ;
struct lpfc_hba {size_t* hbq_get; struct hbq_s* hbqs; int link_state; } ;
struct hbq_s {scalar_t__ next_hbqPutIdx; scalar_t__ hbqPutIdx; scalar_t__ entry_count; scalar_t__ local_hbqGetIdx; scalar_t__ hbq_virt; } ;


 int KERN_ERR ;
 int LOG_SLI ;
 int LOG_VPORT ;
 int LPFC_HBA_ERROR ;
 size_t le32_to_cpu (size_t) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,size_t,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct lpfc_hbq_entry *
lpfc_sli_next_hbq_slot(struct lpfc_hba *phba, uint32_t hbqno)
{
 struct hbq_s *hbqp = &phba->hbqs[hbqno];

 if (hbqp->next_hbqPutIdx == hbqp->hbqPutIdx &&
     ++hbqp->next_hbqPutIdx >= hbqp->entry_count)
  hbqp->next_hbqPutIdx = 0;

 if (unlikely(hbqp->local_hbqGetIdx == hbqp->next_hbqPutIdx)) {
  uint32_t raw_index = phba->hbq_get[hbqno];
  uint32_t getidx = le32_to_cpu(raw_index);

  hbqp->local_hbqGetIdx = getidx;

  if (unlikely(hbqp->local_hbqGetIdx >= hbqp->entry_count)) {
   lpfc_printf_log(phba, KERN_ERR,
     LOG_SLI | LOG_VPORT,
     "1802 HBQ %d: local_hbqGetIdx "
     "%u is > than hbqp->entry_count %u\n",
     hbqno, hbqp->local_hbqGetIdx,
     hbqp->entry_count);

   phba->link_state = LPFC_HBA_ERROR;
   return ((void*)0);
  }

  if (hbqp->local_hbqGetIdx == hbqp->next_hbqPutIdx)
   return ((void*)0);
 }

 return (struct lpfc_hbq_entry *) phba->hbqs[hbqno].hbq_virt +
   hbqp->hbqPutIdx;
}
