
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int scsi_qla_host_t ;


 int QLA83XX_IDC_CONTROL ;
 int qla83xx_rd_reg (int *,int ,int *) ;

int
__qla83xx_get_idc_control(scsi_qla_host_t *vha, uint32_t *idc_control)
{
 return qla83xx_rd_reg(vha, QLA83XX_IDC_CONTROL, idc_control);
}
