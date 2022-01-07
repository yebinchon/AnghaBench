
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_11__ {size_t* rpi_ids; } ;
struct lpfc_hba {scalar_t__ sli_rev; int mbox_mem_pool; TYPE_2__ sli4_hba; TYPE_1__* pport; } ;
struct TYPE_12__ {scalar_t__ mbxStatus; } ;
struct TYPE_13__ {TYPE_3__ mb; } ;
struct TYPE_14__ {TYPE_4__ u; } ;
struct TYPE_10__ {int vpi; } ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LPFC_MBOX_TMO ;
 scalar_t__ LPFC_SLI_REV4 ;
 int MBX_SUCCESS ;
 int MBX_TIMEOUT ;
 int lpfc_sli4_free_rpi (struct lpfc_hba*,size_t) ;
 int lpfc_sli_issue_mbox_wait (struct lpfc_hba*,TYPE_5__*,int ) ;
 int lpfc_unreg_login (struct lpfc_hba*,int ,size_t,TYPE_5__*) ;
 TYPE_5__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_5__*,int ) ;

__attribute__((used)) static int lpfcdiag_loop_self_unreg(struct lpfc_hba *phba, uint16_t rpi)
{
 LPFC_MBOXQ_t *mbox;
 int status;


 mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (mbox == ((void*)0))
  return -ENOMEM;

 if (phba->sli_rev < LPFC_SLI_REV4)
  lpfc_unreg_login(phba, 0, rpi, mbox);
 else
  lpfc_unreg_login(phba, phba->pport->vpi,
     phba->sli4_hba.rpi_ids[rpi], mbox);

 status = lpfc_sli_issue_mbox_wait(phba, mbox, LPFC_MBOX_TMO);

 if ((status != MBX_SUCCESS) || (mbox->u.mb.mbxStatus)) {
  if (status != MBX_TIMEOUT)
   mempool_free(mbox, phba->mbox_mem_pool);
  return -EIO;
 }
 mempool_free(mbox, phba->mbox_mem_pool);
 if (phba->sli_rev == LPFC_SLI_REV4)
  lpfc_sli4_free_rpi(phba, rpi);
 return 0;
}
