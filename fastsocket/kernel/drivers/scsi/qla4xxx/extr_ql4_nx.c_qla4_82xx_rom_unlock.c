
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;


 int PCIE_SEM2_UNLOCK ;
 int QLA82XX_PCIE_REG (int ) ;
 int qla4_82xx_rd_32 (struct scsi_qla_host*,int ) ;

__attribute__((used)) static void
qla4_82xx_rom_unlock(struct scsi_qla_host *ha)
{
 qla4_82xx_rd_32(ha, QLA82XX_PCIE_REG(PCIE_SEM2_UNLOCK));
}
