
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_sli_ring {scalar_t__ ringno; int txcmplq; } ;
struct TYPE_3__ {scalar_t__ ulpCommand; } ;
struct lpfc_iocbq {TYPE_2__* vport; TYPE_1__ iocb; int iocb_flag; int list; } ;
struct lpfc_hba {int fc_ratov; } ;
struct TYPE_4__ {int els_tmofunc; } ;


 int BUG () ;
 scalar_t__ CMD_ABORT_XRI_CN ;
 scalar_t__ CMD_CLOSE_XRI_CN ;
 scalar_t__ LPFC_ELS_RING ;
 int LPFC_IO_ON_TXCMPLQ ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
lpfc_sli_ringtxcmpl_put(struct lpfc_hba *phba, struct lpfc_sli_ring *pring,
   struct lpfc_iocbq *piocb)
{
 list_add_tail(&piocb->list, &pring->txcmplq);
 piocb->iocb_flag |= LPFC_IO_ON_TXCMPLQ;

 if ((unlikely(pring->ringno == LPFC_ELS_RING)) &&
    (piocb->iocb.ulpCommand != CMD_ABORT_XRI_CN) &&
    (piocb->iocb.ulpCommand != CMD_CLOSE_XRI_CN)) {
  if (!piocb->vport)
   BUG();
  else
   mod_timer(&piocb->vport->els_tmofunc,
    jiffies +
    msecs_to_jiffies(1000 * (phba->fc_ratov << 1)));
 }


 return 0;
}
