
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct lpfc_sli {size_t last_iotag; size_t iocbq_lookup_len; struct lpfc_iocbq** iocbq_lookup; } ;
struct lpfc_iocbq {size_t iotag; } ;
struct lpfc_hba {int hbalock; struct lpfc_sli sli; } ;


 int GFP_KERNEL ;
 int KERN_WARNING ;
 int LOG_SLI ;
 int LPFC_IOCBQ_LOOKUP_INCREMENT ;
 int kfree (struct lpfc_iocbq**) ;
 struct lpfc_iocbq** kzalloc (size_t,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,size_t) ;
 int memcpy (struct lpfc_iocbq**,struct lpfc_iocbq**,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

uint16_t
lpfc_sli_next_iotag(struct lpfc_hba *phba, struct lpfc_iocbq *iocbq)
{
 struct lpfc_iocbq **new_arr;
 struct lpfc_iocbq **old_arr;
 size_t new_len;
 struct lpfc_sli *psli = &phba->sli;
 uint16_t iotag;

 spin_lock_irq(&phba->hbalock);
 iotag = psli->last_iotag;
 if(++iotag < psli->iocbq_lookup_len) {
  psli->last_iotag = iotag;
  psli->iocbq_lookup[iotag] = iocbq;
  spin_unlock_irq(&phba->hbalock);
  iocbq->iotag = iotag;
  return iotag;
 } else if (psli->iocbq_lookup_len < (0xffff
        - LPFC_IOCBQ_LOOKUP_INCREMENT)) {
  new_len = psli->iocbq_lookup_len + LPFC_IOCBQ_LOOKUP_INCREMENT;
  spin_unlock_irq(&phba->hbalock);
  new_arr = kzalloc(new_len * sizeof (struct lpfc_iocbq *),
      GFP_KERNEL);
  if (new_arr) {
   spin_lock_irq(&phba->hbalock);
   old_arr = psli->iocbq_lookup;
   if (new_len <= psli->iocbq_lookup_len) {

    kfree(new_arr);
    iotag = psli->last_iotag;
    if(++iotag < psli->iocbq_lookup_len) {
     psli->last_iotag = iotag;
     psli->iocbq_lookup[iotag] = iocbq;
     spin_unlock_irq(&phba->hbalock);
     iocbq->iotag = iotag;
     return iotag;
    }
    spin_unlock_irq(&phba->hbalock);
    return 0;
   }
   if (psli->iocbq_lookup)
    memcpy(new_arr, old_arr,
           ((psli->last_iotag + 1) *
     sizeof (struct lpfc_iocbq *)));
   psli->iocbq_lookup = new_arr;
   psli->iocbq_lookup_len = new_len;
   psli->last_iotag = iotag;
   psli->iocbq_lookup[iotag] = iocbq;
   spin_unlock_irq(&phba->hbalock);
   iocbq->iotag = iotag;
   kfree(old_arr);
   return iotag;
  }
 } else
  spin_unlock_irq(&phba->hbalock);

 lpfc_printf_log(phba, KERN_WARNING, LOG_SLI,
   "0318 Failed to allocate IOTAG.last IOTAG is %d\n",
   psli->last_iotag);

 return 0;
}
