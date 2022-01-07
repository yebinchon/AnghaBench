
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct qla_hw_data {int portnum; } ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int QLA82XX_CRB_DRV_ACTIVE ;
 int QLA82XX_DRV_ACTIVE ;
 int QLA82XX_DRV_NOT_ACTIVE ;
 int qla82xx_rd_32 (struct qla_hw_data*,int ) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int) ;

inline void
qla82xx_set_drv_active(scsi_qla_host_t *vha)
{
 uint32_t drv_active;
 struct qla_hw_data *ha = vha->hw;

 drv_active = qla82xx_rd_32(ha, QLA82XX_CRB_DRV_ACTIVE);


 if (drv_active == 0xffffffff) {
  qla82xx_wr_32(ha, QLA82XX_CRB_DRV_ACTIVE,
   QLA82XX_DRV_NOT_ACTIVE);
  drv_active = qla82xx_rd_32(ha, QLA82XX_CRB_DRV_ACTIVE);
 }
 drv_active |= (QLA82XX_DRV_ACTIVE << (ha->portnum * 4));
 qla82xx_wr_32(ha, QLA82XX_CRB_DRV_ACTIVE, drv_active);
}
