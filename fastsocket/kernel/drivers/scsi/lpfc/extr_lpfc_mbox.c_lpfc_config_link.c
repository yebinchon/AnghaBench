
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct lpfc_vport {int fc_myDID; } ;
struct lpfc_hba {scalar_t__ cfg_ack0; int fc_citov; int fc_crtov; int fc_altov; int fc_rttov; int fc_ratov; int fc_arbtov; int fc_edtov; int cfg_cr_count; scalar_t__ cfg_cr_delay; struct lpfc_vport* pport; } ;
struct TYPE_9__ {int cr; int ci; int ack0_enable; int citov; int crtov; int altov; int rttov; int ratov; int arbtov; int edtov; int myId; int cr_count; scalar_t__ cr_delay; } ;
struct TYPE_10__ {TYPE_2__ varCfgLnk; } ;
struct TYPE_11__ {int mbxOwner; int mbxCommand; TYPE_3__ un; } ;
struct TYPE_8__ {TYPE_4__ mb; } ;
struct TYPE_12__ {TYPE_1__ u; } ;
typedef TYPE_4__ MAILBOX_t ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 int MBX_CONFIG_LINK ;
 int OWN_HOST ;
 int memset (TYPE_5__*,int ,int) ;

void
lpfc_config_link(struct lpfc_hba * phba, LPFC_MBOXQ_t * pmb)
{
 struct lpfc_vport *vport = phba->pport;
 MAILBOX_t *mb = &pmb->u.mb;
 memset(pmb, 0, sizeof (LPFC_MBOXQ_t));




 if (phba->cfg_cr_delay) {
  mb->un.varCfgLnk.cr = 1;
  mb->un.varCfgLnk.ci = 1;
  mb->un.varCfgLnk.cr_delay = phba->cfg_cr_delay;
  mb->un.varCfgLnk.cr_count = phba->cfg_cr_count;
 }

 mb->un.varCfgLnk.myId = vport->fc_myDID;
 mb->un.varCfgLnk.edtov = phba->fc_edtov;
 mb->un.varCfgLnk.arbtov = phba->fc_arbtov;
 mb->un.varCfgLnk.ratov = phba->fc_ratov;
 mb->un.varCfgLnk.rttov = phba->fc_rttov;
 mb->un.varCfgLnk.altov = phba->fc_altov;
 mb->un.varCfgLnk.crtov = phba->fc_crtov;
 mb->un.varCfgLnk.citov = phba->fc_citov;

 if (phba->cfg_ack0)
  mb->un.varCfgLnk.ack0_enable = 1;

 mb->mbxCommand = MBX_CONFIG_LINK;
 mb->mbxOwner = OWN_HOST;
 return;
}
