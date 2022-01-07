
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_5__ {size_t abortContextTag; size_t abortIoTag; } ;
struct TYPE_7__ {int * ulpWord; TYPE_1__ acxri; } ;
struct TYPE_8__ {TYPE_3__ un; scalar_t__ ulpStatus; } ;
struct lpfc_iocbq {TYPE_4__ iocb; } ;
struct TYPE_6__ {size_t last_iotag; struct lpfc_iocbq** iocbq_lookup; } ;
struct lpfc_hba {scalar_t__ sli_rev; int hbalock; TYPE_2__ sli; } ;
typedef TYPE_4__ IOCB_t ;


 int KERN_WARNING ;
 int LOG_ELS ;
 int LOG_SLI ;
 scalar_t__ LPFC_SLI_REV4 ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,struct lpfc_iocbq*,size_t,size_t,scalar_t__,int ) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_sli_abort_els_cmpl(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
   struct lpfc_iocbq *rspiocb)
{
 IOCB_t *irsp = &rspiocb->iocb;
 uint16_t abort_iotag, abort_context;
 struct lpfc_iocbq *abort_iocb = ((void*)0);

 if (irsp->ulpStatus) {





  abort_context = cmdiocb->iocb.un.acxri.abortContextTag;
  abort_iotag = cmdiocb->iocb.un.acxri.abortIoTag;

  spin_lock_irq(&phba->hbalock);
  if (phba->sli_rev < LPFC_SLI_REV4) {
   if (abort_iotag != 0 &&
    abort_iotag <= phba->sli.last_iotag)
    abort_iocb =
     phba->sli.iocbq_lookup[abort_iotag];
  } else





   abort_iocb = phba->sli.iocbq_lookup[abort_context];

  lpfc_printf_log(phba, KERN_WARNING, LOG_ELS | LOG_SLI,
    "0327 Cannot abort els iocb %p "
    "with tag %x context %x, abort status %x, "
    "abort code %x\n",
    abort_iocb, abort_iotag, abort_context,
    irsp->ulpStatus, irsp->un.ulpWord[4]);

  spin_unlock_irq(&phba->hbalock);
 }
 lpfc_sli_release_iocbq(phba, cmdiocb);
 return;
}
