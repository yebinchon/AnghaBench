
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct lpfc_hba {int dummy; } ;
struct TYPE_8__ {int mbxCommand; } ;
struct TYPE_7__ {TYPE_2__ mb; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef TYPE_2__ MAILBOX_t ;
typedef TYPE_3__ LPFC_MBOXQ_t ;
 int LPFC_MBOX_SLI4_CONFIG_EXTENDED_TMO ;
 int LPFC_MBOX_SLI4_CONFIG_TMO ;
 int LPFC_MBOX_SUBSYSTEM_COMMON ;
 int LPFC_MBOX_SUBSYSTEM_FCOE ;
 int LPFC_MBOX_TMO ;
 int LPFC_MBOX_TMO_FLASH_CMD ;
 int lpfc_sli_config_mbox_opcode_get (struct lpfc_hba*,TYPE_3__*) ;
 int lpfc_sli_config_mbox_subsys_get (struct lpfc_hba*,TYPE_3__*) ;

int
lpfc_mbox_tmo_val(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{
 MAILBOX_t *mbox = &mboxq->u.mb;
 uint8_t subsys, opcode;

 switch (mbox->mbxCommand) {
 case 130:
 case 135:
 case 131:
 case 136:
 case 137:
 case 129:
 case 134:
 case 128:
 case 133:
 case 138:
  return LPFC_MBOX_TMO_FLASH_CMD;
 case 132:
  subsys = lpfc_sli_config_mbox_subsys_get(phba, mboxq);
  opcode = lpfc_sli_config_mbox_opcode_get(phba, mboxq);
  if (subsys == LPFC_MBOX_SUBSYSTEM_COMMON) {
   switch (opcode) {
   case 147:
   case 139:
   case 146:
   case 154:
   case 149:
   case 143:
   case 150:
   case 140:
   case 152:
   case 151:
   case 144:
   case 145:
   case 142:
   case 148:
   case 141:
    return LPFC_MBOX_SLI4_CONFIG_EXTENDED_TMO;
   }
  }
  if (subsys == LPFC_MBOX_SUBSYSTEM_FCOE) {
   switch (opcode) {
   case 153:
    return LPFC_MBOX_SLI4_CONFIG_EXTENDED_TMO;
   }
  }
  return LPFC_MBOX_SLI4_CONFIG_TMO;
 }
 return LPFC_MBOX_TMO;
}
