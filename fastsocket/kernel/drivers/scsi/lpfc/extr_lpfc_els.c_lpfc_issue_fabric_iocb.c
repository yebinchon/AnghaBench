
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_iocbq {int list; int iocb_flag; int * fabric_iocb_cmpl; int * iocb_cmpl; TYPE_1__* vport; } ;
struct lpfc_hba {int hbalock; int fabric_iocb_list; int fabric_iocb_count; int bit_flags; } ;
struct TYPE_2__ {int port_state; } ;


 int BUG () ;
 int FABRIC_COMANDS_BLOCKED ;
 int IOCB_ERROR ;
 int IOCB_SUCCESS ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int LPFC_ELS_RING ;
 int LPFC_IO_FABRIC ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int list_add_tail (int *,int *) ;
 int * lpfc_cmpl_fabric_iocb ;
 int lpfc_debugfs_disc_trc (TYPE_1__*,int ,char*,int ,int ,int ) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int
lpfc_issue_fabric_iocb(struct lpfc_hba *phba, struct lpfc_iocbq *iocb)
{
 unsigned long iflags;
 int ready;
 int ret;

 if (atomic_read(&phba->fabric_iocb_count) > 1)
  BUG();

 spin_lock_irqsave(&phba->hbalock, iflags);
 ready = atomic_read(&phba->fabric_iocb_count) == 0 &&
  !test_bit(FABRIC_COMANDS_BLOCKED, &phba->bit_flags);

 if (ready)

  atomic_inc(&phba->fabric_iocb_count);
 spin_unlock_irqrestore(&phba->hbalock, iflags);
 if (ready) {
  iocb->fabric_iocb_cmpl = iocb->iocb_cmpl;
  iocb->iocb_cmpl = lpfc_cmpl_fabric_iocb;
  iocb->iocb_flag |= LPFC_IO_FABRIC;

  lpfc_debugfs_disc_trc(iocb->vport, LPFC_DISC_TRC_ELS_CMD,
   "Fabric sched2:   ste:x%x",
   iocb->vport->port_state, 0, 0);

  ret = lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, iocb, 0);

  if (ret == IOCB_ERROR) {
   iocb->iocb_cmpl = iocb->fabric_iocb_cmpl;
   iocb->fabric_iocb_cmpl = ((void*)0);
   iocb->iocb_flag &= ~LPFC_IO_FABRIC;
   atomic_dec(&phba->fabric_iocb_count);
  }
 } else {
  spin_lock_irqsave(&phba->hbalock, iflags);
  list_add_tail(&iocb->list, &phba->fabric_iocb_list);
  spin_unlock_irqrestore(&phba->hbalock, iflags);
  ret = IOCB_SUCCESS;
 }
 return ret;
}
