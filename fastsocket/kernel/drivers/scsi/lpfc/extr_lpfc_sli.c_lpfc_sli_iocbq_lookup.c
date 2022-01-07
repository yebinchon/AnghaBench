
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
struct lpfc_sli_ring {int dummy; } ;
struct TYPE_4__ {size_t ulpIoTag; } ;
struct lpfc_iocbq {int iocb_flag; TYPE_2__ iocb; int list; } ;
struct TYPE_3__ {size_t last_iotag; struct lpfc_iocbq** iocbq_lookup; } ;
struct lpfc_hba {TYPE_1__ sli; } ;


 int KERN_ERR ;
 int LOG_SLI ;
 int LPFC_IO_ON_TXCMPLQ ;
 int list_del_init (int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,size_t,size_t,int ) ;

__attribute__((used)) static struct lpfc_iocbq *
lpfc_sli_iocbq_lookup(struct lpfc_hba *phba,
        struct lpfc_sli_ring *pring,
        struct lpfc_iocbq *prspiocb)
{
 struct lpfc_iocbq *cmd_iocb = ((void*)0);
 uint16_t iotag;

 iotag = prspiocb->iocb.ulpIoTag;

 if (iotag != 0 && iotag <= phba->sli.last_iotag) {
  cmd_iocb = phba->sli.iocbq_lookup[iotag];
  list_del_init(&cmd_iocb->list);
  if (cmd_iocb->iocb_flag & LPFC_IO_ON_TXCMPLQ) {
   cmd_iocb->iocb_flag &= ~LPFC_IO_ON_TXCMPLQ;
  }
  return cmd_iocb;
 }

 lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
   "0317 iotag x%x is out off "
   "range: max iotag x%x wd0 x%x\n",
   iotag, phba->sli.last_iotag,
   *(((uint32_t *) &prspiocb->iocb) + 7));
 return ((void*)0);
}
