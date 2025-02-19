
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct qla_hw_data {int portnum; } ;
struct TYPE_4__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int QLA82XX_CRB_DRV_ACTIVE ;
 int QLA82XX_CRB_DRV_IDC_VERSION ;
 int QLA82XX_DRV_ACTIVE ;
 int QLA82XX_IDC_VERSION ;
 int ql_log (int ,TYPE_1__*,int,char*,int,...) ;
 int ql_log_info ;
 int qla82xx_rd_32 (struct qla_hw_data*,int ) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int) ;

inline void
qla82xx_set_idc_version(scsi_qla_host_t *vha)
{
 int idc_ver;
 uint32_t drv_active;
 struct qla_hw_data *ha = vha->hw;

 drv_active = qla82xx_rd_32(ha, QLA82XX_CRB_DRV_ACTIVE);
 if (drv_active == (QLA82XX_DRV_ACTIVE << (ha->portnum * 4))) {
  qla82xx_wr_32(ha, QLA82XX_CRB_DRV_IDC_VERSION,
      QLA82XX_IDC_VERSION);
  ql_log(ql_log_info, vha, 0xb082,
      "IDC version updated to %d\n", QLA82XX_IDC_VERSION);
 } else {
  idc_ver = qla82xx_rd_32(ha, QLA82XX_CRB_DRV_IDC_VERSION);
  if (idc_ver != QLA82XX_IDC_VERSION)
   ql_log(ql_log_info, vha, 0xb083,
       "qla2xxx driver IDC version %d is not compatible "
       "with IDC version %d of the other drivers\n",
       QLA82XX_IDC_VERSION, idc_ver);
 }
}
