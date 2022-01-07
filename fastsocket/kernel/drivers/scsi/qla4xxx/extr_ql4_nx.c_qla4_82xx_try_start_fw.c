
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flt_region_fw; } ;
struct scsi_qla_host {TYPE_1__ hw; } ;


 int KERN_ERR ;
 int KERN_INFO ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int qla4_82xx_start_firmware (struct scsi_qla_host*,int ) ;
 int qla4_8xxx_get_flash_info (struct scsi_qla_host*) ;

int qla4_82xx_try_start_fw(struct scsi_qla_host *ha)
{
 int rval = QLA_ERROR;







 ql4_printk(KERN_INFO, ha,
     "FW: Retrieving flash offsets from FLT/FDT ...\n");
 rval = qla4_8xxx_get_flash_info(ha);
 if (rval != QLA_SUCCESS)
  return rval;

 ql4_printk(KERN_INFO, ha,
     "FW: Attempting to load firmware from flash...\n");
 rval = qla4_82xx_start_firmware(ha, ha->hw.flt_region_fw);

 if (rval != QLA_SUCCESS) {
  ql4_printk(KERN_ERR, ha, "FW: Load firmware from flash"
      " FAILED...\n");
  return rval;
 }

 return rval;
}
