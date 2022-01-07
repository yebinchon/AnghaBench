
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_vport {int port_state; } ;
struct lpfc_hba {int mbox_mem_pool; } ;
struct TYPE_6__ {scalar_t__ mbxStatus; } ;
struct TYPE_7__ {TYPE_1__ mb; } ;
struct TYPE_8__ {TYPE_2__ u; struct lpfc_vport* vport; } ;
typedef TYPE_3__ LPFC_MBOXQ_t ;


 int KERN_ERR ;
 int LOG_DISCOVERY ;
 int LOG_MBOX ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,scalar_t__,int ) ;
 int mempool_free (TYPE_3__*,int ) ;

__attribute__((used)) static void
lpfc_unregister_fcfi_cmpl(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{
 struct lpfc_vport *vport = mboxq->vport;

 if (mboxq->u.mb.mbxStatus) {
  lpfc_printf_log(phba, KERN_ERR, LOG_DISCOVERY|LOG_MBOX,
   "2550 UNREG_FCFI mbxStatus error x%x "
   "HBA state x%x\n",
   mboxq->u.mb.mbxStatus, vport->port_state);
 }
 mempool_free(mboxq, phba->mbox_mem_pool);
 return;
}
