
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_4__ {TYPE_1__* region; } ;
struct pm8001_hba_info {int nvmd_completion; TYPE_2__ memoryMap; int sas_addr; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_ccb_info {int ccb_tag; int * task; struct fw_control_ex* fw_control_context; } ;
struct get_nvm_data_resp {int ir_tda_bn_dps_das_nvm; int dlen_status; int tag; } ;
struct fw_control_ex {int len; int usrAddr; } ;
struct TYPE_3__ {int * virt_ptr; } ;


 size_t AAP1_RDUMP ;
 size_t C_SEEPROM ;
 size_t EXPAN_ROM ;
 size_t IOP_RDUMP ;
 size_t IPMode ;
 size_t NVMD ;
 size_t NVMD_LEN ;
 size_t NVMD_STAT ;
 size_t NVMD_TYPE ;
 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 int SAS_ADDR_SIZE ;
 size_t TWI_DEVICE ;
 size_t VPD_FLASH ;
 int complete (int ) ;
 size_t le32_to_cpu (int ) ;
 int memcpy (int ,int *,int ) ;
 int pm8001_ccb_free (struct pm8001_hba_info*,size_t) ;
 int pm8001_printk (char*,...) ;

void
pm8001_mpi_get_nvmd_resp(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
 struct fw_control_ex *fw_control_context;
 struct get_nvm_data_resp *pPayload =
  (struct get_nvm_data_resp *)(piomb + 4);
 u32 tag = le32_to_cpu(pPayload->tag);
 struct pm8001_ccb_info *ccb = &pm8001_ha->ccb_info[tag];
 u32 dlen_status = le32_to_cpu(pPayload->dlen_status);
 u32 ir_tds_bn_dps_das_nvm =
  le32_to_cpu(pPayload->ir_tda_bn_dps_das_nvm);
 void *virt_addr = pm8001_ha->memoryMap.region[NVMD].virt_ptr;
 fw_control_context = ccb->fw_control_context;

 PM8001_MSG_DBG(pm8001_ha, pm8001_printk("Get nvm data complete!\n"));
 if ((dlen_status & NVMD_STAT) != 0) {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("Get nvm data error!\n"));
  complete(pm8001_ha->nvmd_completion);
  return;
 }

 if (ir_tds_bn_dps_das_nvm & IPMode) {

  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("Get NVMD success, IR=1\n"));
  if ((ir_tds_bn_dps_das_nvm & NVMD_TYPE) == TWI_DEVICE) {
   if (ir_tds_bn_dps_das_nvm == 0x80a80200) {
    memcpy(pm8001_ha->sas_addr,
          ((u8 *)virt_addr + 4),
           SAS_ADDR_SIZE);
    PM8001_MSG_DBG(pm8001_ha,
     pm8001_printk("Get SAS address"
     " from VPD successfully!\n"));
   }
  } else if (((ir_tds_bn_dps_das_nvm & NVMD_TYPE) == C_SEEPROM)
   || ((ir_tds_bn_dps_das_nvm & NVMD_TYPE) == VPD_FLASH) ||
   ((ir_tds_bn_dps_das_nvm & NVMD_TYPE) == EXPAN_ROM)) {
    ;
  } else if (((ir_tds_bn_dps_das_nvm & NVMD_TYPE) == AAP1_RDUMP)
   || ((ir_tds_bn_dps_das_nvm & NVMD_TYPE) == IOP_RDUMP)) {
   ;
  } else {

   PM8001_MSG_DBG(pm8001_ha,
    pm8001_printk("(IR=1)Wrong Device type 0x%x\n",
    ir_tds_bn_dps_das_nvm));
  }
 } else {
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("Get NVMD success, IR=0, dataLen=%d\n",
   (dlen_status & NVMD_LEN) >> 24));
 }
 memcpy(fw_control_context->usrAddr,
  pm8001_ha->memoryMap.region[NVMD].virt_ptr,
  fw_control_context->len);
 complete(pm8001_ha->nvmd_completion);
 ccb->task = ((void*)0);
 ccb->ccb_tag = 0xFFFFFFFF;
 pm8001_ccb_free(pm8001_ha, tag);
}
