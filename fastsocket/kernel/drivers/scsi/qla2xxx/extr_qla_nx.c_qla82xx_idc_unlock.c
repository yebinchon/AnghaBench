
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_hw_data {int dummy; } ;


 int PCIE_SEM5_UNLOCK ;
 int QLA82XX_PCIE_REG (int ) ;
 int qla82xx_rd_32 (struct qla_hw_data*,int ) ;

void
qla82xx_idc_unlock(struct qla_hw_data *ha)
{
 qla82xx_rd_32(ha, QLA82XX_PCIE_REG(PCIE_SEM5_UNLOCK));
}
