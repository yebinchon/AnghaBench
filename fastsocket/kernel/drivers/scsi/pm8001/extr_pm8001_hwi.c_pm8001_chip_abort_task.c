
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pm8001_hba_info {int dummy; } ;
struct pm8001_device {scalar_t__ dev_type; int device_id; } ;


 int OPC_INB_SATA_ABORT ;
 int OPC_INB_SMP_ABORT ;
 int OPC_INB_SSP_ABORT ;
 int PM8001_EH_DBG (struct pm8001_hba_info*,int ) ;
 scalar_t__ SAS_END_DEVICE ;
 scalar_t__ SATA_DEV ;
 int TMF_RESP_FUNC_COMPLETE ;
 int TMF_RESP_FUNC_FAILED ;
 int pm8001_printk (char*,int,...) ;
 int send_task_abort (struct pm8001_hba_info*,int ,int ,int ,int ,int ) ;

int pm8001_chip_abort_task(struct pm8001_hba_info *pm8001_ha,
 struct pm8001_device *pm8001_dev, u8 flag, u32 task_tag, u32 cmd_tag)
{
 u32 opc, device_id;
 int rc = TMF_RESP_FUNC_FAILED;
 PM8001_EH_DBG(pm8001_ha,
  pm8001_printk("cmd_tag = %x, abort task tag = 0x%x",
   cmd_tag, task_tag));
 if (pm8001_dev->dev_type == SAS_END_DEVICE)
  opc = OPC_INB_SSP_ABORT;
 else if (pm8001_dev->dev_type == SATA_DEV)
  opc = OPC_INB_SATA_ABORT;
 else
  opc = OPC_INB_SMP_ABORT;
 device_id = pm8001_dev->device_id;
 rc = send_task_abort(pm8001_ha, opc, device_id, flag,
  task_tag, cmd_tag);
 if (rc != TMF_RESP_FUNC_COMPLETE)
  PM8001_EH_DBG(pm8001_ha, pm8001_printk("rc= %d\n", rc));
 return rc;
}
