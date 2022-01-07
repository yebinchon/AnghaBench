
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct lpfc_sli_ring {int dummy; } ;
struct lpfc_iocbq {int iocb_flag; int list; } ;
struct TYPE_2__ {size_t last_iotag; struct lpfc_iocbq** iocbq_lookup; } ;
struct lpfc_hba {TYPE_1__ sli; } ;


 int KERN_ERR ;
 int LOG_SLI ;
 int LPFC_IO_ON_TXCMPLQ ;
 int list_del_init (int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,size_t,size_t) ;

__attribute__((used)) static struct lpfc_iocbq *
lpfc_sli_iocbq_lookup_by_tag(struct lpfc_hba *phba,
        struct lpfc_sli_ring *pring, uint16_t iotag)
{
 struct lpfc_iocbq *cmd_iocb;

 if (iotag != 0 && iotag <= phba->sli.last_iotag) {
  cmd_iocb = phba->sli.iocbq_lookup[iotag];
  if (cmd_iocb->iocb_flag & LPFC_IO_ON_TXCMPLQ) {

   list_del_init(&cmd_iocb->list);
   cmd_iocb->iocb_flag &= ~LPFC_IO_ON_TXCMPLQ;
   return cmd_iocb;
  }
 }
 lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
   "0372 iotag x%x is out off range: max iotag (x%x)\n",
   iotag, phba->sli.last_iotag);
 return ((void*)0);
}
