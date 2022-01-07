
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct lpfc_vport {scalar_t__ port_type; int vpi; TYPE_4__* phba; } ;
struct TYPE_10__ {int mbox_mem_pool; } ;
struct TYPE_9__ {int mbox_cmpl; struct lpfc_vport* vport; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int FC_VPORT_FAILED ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int LOG_MBOX ;
 scalar_t__ LPFC_PHYSICAL_PORT ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int lpfc_alloc_vpi (TYPE_4__*) ;
 int lpfc_init_vpi (TYPE_4__*,TYPE_1__*,int) ;
 int lpfc_init_vpi_cmpl ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*) ;
 int lpfc_sli_issue_mbox (TYPE_4__*,TYPE_1__*,int ) ;
 int lpfc_vport_set_state (struct lpfc_vport*,int ) ;
 TYPE_1__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_1__*,int ) ;

void
lpfc_issue_init_vpi(struct lpfc_vport *vport)
{
 LPFC_MBOXQ_t *mboxq;
 int rc, vpi;

 if ((vport->port_type != LPFC_PHYSICAL_PORT) && (!vport->vpi)) {
  vpi = lpfc_alloc_vpi(vport->phba);
  if (!vpi) {
   lpfc_printf_vlog(vport, KERN_ERR,
      LOG_MBOX,
      "3303 Failed to obtain vport vpi\n");
   lpfc_vport_set_state(vport, FC_VPORT_FAILED);
   return;
  }
  vport->vpi = vpi;
 }

 mboxq = mempool_alloc(vport->phba->mbox_mem_pool, GFP_KERNEL);
 if (!mboxq) {
  lpfc_printf_vlog(vport, KERN_ERR,
   LOG_MBOX, "2607 Failed to allocate "
   "init_vpi mailbox\n");
  return;
 }
 lpfc_init_vpi(vport->phba, mboxq, vport->vpi);
 mboxq->vport = vport;
 mboxq->mbox_cmpl = lpfc_init_vpi_cmpl;
 rc = lpfc_sli_issue_mbox(vport->phba, mboxq, MBX_NOWAIT);
 if (rc == MBX_NOT_FINISHED) {
  lpfc_printf_vlog(vport, KERN_ERR,
   LOG_MBOX, "2608 Failed to issue init_vpi mailbox\n");
  mempool_free(mboxq, vport->phba->mbox_mem_pool);
 }
}
