
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct pm8001_ioctl_payload {size_t minor_function; size_t length; scalar_t__ func_specific; } ;
struct TYPE_4__ {TYPE_1__* region; } ;
struct pm8001_hba_info {TYPE_2__ memoryMap; struct pm8001_ccb_info* ccb_info; struct inbound_queue_table* inbnd_q_tbl; } ;
struct pm8001_ccb_info {size_t ccb_tag; struct fw_control_ex* fw_control_context; } ;
struct inbound_queue_table {int dummy; } ;
struct get_nvm_data_req {void* resp_addr_lo; void* resp_addr_hi; void* resp_len; void* len_ir_vpdd; void* tag; } ;
struct fw_control_ex {size_t len; int * usrAddr; } ;
typedef int nvmd_req ;
struct TYPE_3__ {size_t phys_addr_hi; size_t phys_addr_lo; } ;



 int ENOMEM ;

 int GFP_KERNEL ;
 size_t IPMode ;
 size_t NVMD ;
 size_t OPC_INB_GET_NVMD_DATA ;


 void* cpu_to_le32 (size_t) ;
 int kfree (struct fw_control_ex*) ;
 struct fw_control_ex* kzalloc (int,int ) ;
 int memset (struct get_nvm_data_req*,int ,int) ;
 int pm8001_mpi_build_cmd (struct pm8001_hba_info*,struct inbound_queue_table*,size_t,struct get_nvm_data_req*,int ) ;
 int pm8001_tag_alloc (struct pm8001_hba_info*,size_t*) ;

int pm8001_chip_get_nvmd_req(struct pm8001_hba_info *pm8001_ha,
 void *payload)
{
 u32 opc = OPC_INB_GET_NVMD_DATA;
 u32 nvmd_type;
 int rc;
 u32 tag;
 struct pm8001_ccb_info *ccb;
 struct inbound_queue_table *circularQ;
 struct get_nvm_data_req nvmd_req;
 struct fw_control_ex *fw_control_context;
 struct pm8001_ioctl_payload *ioctl_payload = payload;

 nvmd_type = ioctl_payload->minor_function;
 fw_control_context = kzalloc(sizeof(struct fw_control_ex), GFP_KERNEL);
 if (!fw_control_context)
  return -ENOMEM;
 fw_control_context->usrAddr = (u8 *)ioctl_payload->func_specific;
 fw_control_context->len = ioctl_payload->length;
 circularQ = &pm8001_ha->inbnd_q_tbl[0];
 memset(&nvmd_req, 0, sizeof(nvmd_req));
 rc = pm8001_tag_alloc(pm8001_ha, &tag);
 if (rc) {
  kfree(fw_control_context);
  return rc;
 }
 ccb = &pm8001_ha->ccb_info[tag];
 ccb->ccb_tag = tag;
 ccb->fw_control_context = fw_control_context;
 nvmd_req.tag = cpu_to_le32(tag);

 switch (nvmd_type) {
 case 129: {
  u32 twi_addr, twi_page_size;
  twi_addr = 0xa8;
  twi_page_size = 2;

  nvmd_req.len_ir_vpdd = cpu_to_le32(IPMode | twi_addr << 16 |
   twi_page_size << 8 | 129);
  nvmd_req.resp_len = cpu_to_le32(ioctl_payload->length);
  nvmd_req.resp_addr_hi =
      cpu_to_le32(pm8001_ha->memoryMap.region[NVMD].phys_addr_hi);
  nvmd_req.resp_addr_lo =
      cpu_to_le32(pm8001_ha->memoryMap.region[NVMD].phys_addr_lo);
  break;
 }
 case 131: {
  nvmd_req.len_ir_vpdd = cpu_to_le32(IPMode | 131);
  nvmd_req.resp_len = cpu_to_le32(ioctl_payload->length);
  nvmd_req.resp_addr_hi =
      cpu_to_le32(pm8001_ha->memoryMap.region[NVMD].phys_addr_hi);
  nvmd_req.resp_addr_lo =
      cpu_to_le32(pm8001_ha->memoryMap.region[NVMD].phys_addr_lo);
  break;
 }
 case 128: {
  nvmd_req.len_ir_vpdd = cpu_to_le32(IPMode | 128);
  nvmd_req.resp_len = cpu_to_le32(ioctl_payload->length);
  nvmd_req.resp_addr_hi =
      cpu_to_le32(pm8001_ha->memoryMap.region[NVMD].phys_addr_hi);
  nvmd_req.resp_addr_lo =
      cpu_to_le32(pm8001_ha->memoryMap.region[NVMD].phys_addr_lo);
  break;
 }
 case 130: {
  nvmd_req.len_ir_vpdd = cpu_to_le32(IPMode | 130);
  nvmd_req.resp_len = cpu_to_le32(ioctl_payload->length);
  nvmd_req.resp_addr_hi =
      cpu_to_le32(pm8001_ha->memoryMap.region[NVMD].phys_addr_hi);
  nvmd_req.resp_addr_lo =
      cpu_to_le32(pm8001_ha->memoryMap.region[NVMD].phys_addr_lo);
  break;
 }
 default:
  break;
 }
 rc = pm8001_mpi_build_cmd(pm8001_ha, circularQ, opc, &nvmd_req, 0);
 return rc;
}
