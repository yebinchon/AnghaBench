
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;


 int DONTRESET_BIT0 ;
 int QLA83XX_IDC_DRV_CTRL ;
 int qla4_83xx_rd_reg (struct scsi_qla_host*,int ) ;

int qla4_83xx_idc_dontreset(struct scsi_qla_host *ha)
{
 uint32_t idc_ctrl;

 idc_ctrl = qla4_83xx_rd_reg(ha, QLA83XX_IDC_DRV_CTRL);
 return idc_ctrl & DONTRESET_BIT0;
}
