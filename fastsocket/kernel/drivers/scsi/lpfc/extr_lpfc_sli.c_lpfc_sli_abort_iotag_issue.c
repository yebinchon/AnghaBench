
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lpfc_vport {int dummy; } ;
struct lpfc_sli_ring {int ringno; int ring_lock; } ;
struct TYPE_4__ {int abortContextTag; int abortIoTag; int abortType; } ;
struct TYPE_5__ {TYPE_1__ acxri; } ;
struct TYPE_6__ {scalar_t__ ulpCommand; int ulpLe; TYPE_2__ un; int ulpClass; int ulpIoTag; int ulpContext; } ;
struct lpfc_iocbq {int iocb_flag; int iotag; int iocb_cmpl; int fcp_wqidx; int sli4_xritag; TYPE_3__ iocb; struct lpfc_vport* vport; } ;
struct lpfc_hba {scalar_t__ sli_rev; scalar_t__ link_state; } ;
typedef TYPE_3__ IOCB_t ;


 int ABORT_TYPE_ABTS ;
 scalar_t__ CMD_ABORT_XRI_CN ;
 scalar_t__ CMD_CLOSE_XRI_CN ;
 int KERN_INFO ;
 int LOG_SLI ;
 int LPFC_DRIVER_ABORTED ;
 int LPFC_IO_FCP ;
 scalar_t__ LPFC_LINK_UP ;
 scalar_t__ LPFC_SLI_REV4 ;
 int LPFC_USE_FCPWQIDX ;
 struct lpfc_iocbq* __lpfc_sli_get_iocbq (struct lpfc_hba*) ;
 int __lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int __lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ,int ) ;
 int lpfc_sli_abort_els_cmpl ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
lpfc_sli_abort_iotag_issue(struct lpfc_hba *phba, struct lpfc_sli_ring *pring,
      struct lpfc_iocbq *cmdiocb)
{
 struct lpfc_vport *vport = cmdiocb->vport;
 struct lpfc_iocbq *abtsiocbp;
 IOCB_t *icmd = ((void*)0);
 IOCB_t *iabt = ((void*)0);
 int retval;
 unsigned long iflags;






 icmd = &cmdiocb->iocb;
 if (icmd->ulpCommand == CMD_ABORT_XRI_CN ||
     icmd->ulpCommand == CMD_CLOSE_XRI_CN ||
     (cmdiocb->iocb_flag & LPFC_DRIVER_ABORTED) != 0)
  return 0;


 abtsiocbp = __lpfc_sli_get_iocbq(phba);
 if (abtsiocbp == ((void*)0))
  return 0;




 cmdiocb->iocb_flag |= LPFC_DRIVER_ABORTED;

 iabt = &abtsiocbp->iocb;
 iabt->un.acxri.abortType = ABORT_TYPE_ABTS;
 iabt->un.acxri.abortContextTag = icmd->ulpContext;
 if (phba->sli_rev == LPFC_SLI_REV4) {
  iabt->un.acxri.abortIoTag = cmdiocb->sli4_xritag;
  iabt->un.acxri.abortContextTag = cmdiocb->iotag;
 }
 else
  iabt->un.acxri.abortIoTag = icmd->ulpIoTag;
 iabt->ulpLe = 1;
 iabt->ulpClass = icmd->ulpClass;


 abtsiocbp->fcp_wqidx = cmdiocb->fcp_wqidx;
 if (cmdiocb->iocb_flag & LPFC_IO_FCP)
  abtsiocbp->iocb_flag |= LPFC_USE_FCPWQIDX;

 if (phba->link_state >= LPFC_LINK_UP)
  iabt->ulpCommand = CMD_ABORT_XRI_CN;
 else
  iabt->ulpCommand = CMD_CLOSE_XRI_CN;

 abtsiocbp->iocb_cmpl = lpfc_sli_abort_els_cmpl;

 lpfc_printf_vlog(vport, KERN_INFO, LOG_SLI,
    "0339 Abort xri x%x, original iotag x%x, "
    "abort cmd iotag x%x\n",
    iabt->un.acxri.abortIoTag,
    iabt->un.acxri.abortContextTag,
    abtsiocbp->iotag);

 if (phba->sli_rev == LPFC_SLI_REV4) {

  spin_lock_irqsave(&pring->ring_lock, iflags);
  retval = __lpfc_sli_issue_iocb(phba, pring->ringno,
   abtsiocbp, 0);
  spin_unlock_irqrestore(&pring->ring_lock, iflags);
 } else {
  retval = __lpfc_sli_issue_iocb(phba, pring->ringno,
   abtsiocbp, 0);
 }

 if (retval)
  __lpfc_sli_release_iocbq(phba, abtsiocbp);






 return retval;
}
