
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ nic_core_reset_owner; } ;
struct qla_hw_data {int portnum; TYPE_1__ flags; } ;


 int QLA82XX_CRB_DRV_STATE ;
 int QLA82XX_DRVST_RST_RDY ;
 int qla82xx_rd_32 (struct qla_hw_data*,int ) ;

__attribute__((used)) static inline int
qla82xx_need_reset(struct qla_hw_data *ha)
{
 uint32_t drv_state;
 int rval;

 if (ha->flags.nic_core_reset_owner)
  return 1;
 else {
  drv_state = qla82xx_rd_32(ha, QLA82XX_CRB_DRV_STATE);
  rval = drv_state & (QLA82XX_DRVST_RST_RDY << (ha->portnum * 4));
  return rval;
 }
}
