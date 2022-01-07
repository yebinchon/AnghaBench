
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint32_t ;
struct lpfc_hba {int cfg_use_msi; int sli_rev; } ;
struct TYPE_9__ {int* messageNumberByHA; void** autoClearHA; void** attentionConditions; } ;
struct TYPE_10__ {TYPE_2__ varCfgMSI; } ;
struct TYPE_11__ {int mbxOwner; int mbxCommand; TYPE_3__ un; } ;
struct TYPE_8__ {TYPE_4__ mb; } ;
struct TYPE_12__ {TYPE_1__ u; } ;
typedef TYPE_4__ MAILBOX_t ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 int EINVAL ;
 int HA_ERATT ;
 int HA_LATT ;
 int HA_MBATT ;
 int HA_R0ATT ;
 size_t HA_R0_POS ;
 int HA_R1ATT ;
 size_t HA_R1_POS ;
 int HA_R2ATT ;
 int KERN_ERR ;
 int LOG_INIT ;
 int MBX_CONFIG_MSI ;
 int OWN_HOST ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int memset (TYPE_5__*,int ,int) ;

int
lpfc_config_msi(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 MAILBOX_t *mb = &pmb->u.mb;
 uint32_t attentionConditions[2];


 if (phba->cfg_use_msi != 2) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0475 Not configured for supporting MSI-X "
    "cfg_use_msi: 0x%x\n", phba->cfg_use_msi);
  return -EINVAL;
 }

 if (phba->sli_rev < 3) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0476 HBA not supporting SLI-3 or later "
    "SLI Revision: 0x%x\n", phba->sli_rev);
  return -EINVAL;
 }


 memset(pmb, 0, sizeof(LPFC_MBOXQ_t));






 attentionConditions[0] = (HA_R0ATT | HA_R1ATT | HA_R2ATT | HA_ERATT |
      HA_LATT | HA_MBATT);
 attentionConditions[1] = 0;

 mb->un.varCfgMSI.attentionConditions[0] = attentionConditions[0];
 mb->un.varCfgMSI.attentionConditions[1] = attentionConditions[1];
 mb->un.varCfgMSI.messageNumberByHA[HA_R0_POS^3] = 1;

 mb->un.varCfgMSI.messageNumberByHA[HA_R1_POS^3] = 1;


 mb->un.varCfgMSI.autoClearHA[0] = attentionConditions[0];
 mb->un.varCfgMSI.autoClearHA[1] = attentionConditions[1];


 mb->un.varCfgMSI.autoClearHA[0] = 0;
 mb->un.varCfgMSI.autoClearHA[1] = 0;


 mb->mbxCommand = MBX_CONFIG_MSI;
 mb->mbxOwner = OWN_HOST;

 return 0;
}
