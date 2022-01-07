
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cmdidx; scalar_t__ local_getidx; scalar_t__ next_cmdidx; } ;
struct TYPE_4__ {TYPE_1__ sli3; } ;
struct lpfc_sli_ring {int ringno; int ring_lock; int postbufq; int iocb_continue_saveq; int iocb_continueq; int txcmplq; int txq; TYPE_2__ sli; } ;
struct lpfc_sli {int num_rings; struct lpfc_sli_ring* ring; int mboxq_cmpl; int mboxq; } ;
struct lpfc_hba {int hbalock; struct lpfc_sli sli; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int
lpfc_sli_queue_setup(struct lpfc_hba *phba)
{
 struct lpfc_sli *psli;
 struct lpfc_sli_ring *pring;
 int i;

 psli = &phba->sli;
 spin_lock_irq(&phba->hbalock);
 INIT_LIST_HEAD(&psli->mboxq);
 INIT_LIST_HEAD(&psli->mboxq_cmpl);

 for (i = 0; i < psli->num_rings; i++) {
  pring = &psli->ring[i];
  pring->ringno = i;
  pring->sli.sli3.next_cmdidx = 0;
  pring->sli.sli3.local_getidx = 0;
  pring->sli.sli3.cmdidx = 0;
  INIT_LIST_HEAD(&pring->txq);
  INIT_LIST_HEAD(&pring->txcmplq);
  INIT_LIST_HEAD(&pring->iocb_continueq);
  INIT_LIST_HEAD(&pring->iocb_continue_saveq);
  INIT_LIST_HEAD(&pring->postbufq);
  spin_lock_init(&pring->ring_lock);
 }
 spin_unlock_irq(&phba->hbalock);
 return 1;
}
