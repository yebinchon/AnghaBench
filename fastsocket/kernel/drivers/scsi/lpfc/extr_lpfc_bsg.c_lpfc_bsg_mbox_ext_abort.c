
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct lpfc_hba {TYPE_1__ mbox_ext_buf_ctx; } ;


 scalar_t__ LPFC_BSG_MBOX_ABTS ;
 scalar_t__ LPFC_BSG_MBOX_PORT ;
 int lpfc_bsg_mbox_ext_session_reset (struct lpfc_hba*) ;

__attribute__((used)) static void
lpfc_bsg_mbox_ext_abort(struct lpfc_hba *phba)
{
 if (phba->mbox_ext_buf_ctx.state == LPFC_BSG_MBOX_PORT)
  phba->mbox_ext_buf_ctx.state = LPFC_BSG_MBOX_ABTS;
 else
  lpfc_bsg_mbox_ext_session_reset(phba);
 return;
}
