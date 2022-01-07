
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct qla_hw_data {int pdev; } ;
typedef int scsi_qla_host_t ;


 int PCIE_SEM2_LOCK ;
 int QLA82XX_PCIE_REG (int ) ;
 int QLA82XX_ROM_LOCK_ID ;
 int ROM_LOCK_DRIVER ;
 int * pci_get_drvdata (int ) ;
 int ql_dbg (int ,int *,int,char*,void*) ;
 int ql_dbg_p3p ;
 void* qla82xx_rd_32 (struct qla_hw_data*,int ) ;
 int qla82xx_rom_lock_timeout ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int ) ;

__attribute__((used)) static int
qla82xx_rom_lock(struct qla_hw_data *ha)
{
 int done = 0, timeout = 0;
 uint32_t lock_owner = 0;
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);

 while (!done) {

  done = qla82xx_rd_32(ha, QLA82XX_PCIE_REG(PCIE_SEM2_LOCK));
  if (done == 1)
   break;
  if (timeout >= qla82xx_rom_lock_timeout) {
   lock_owner = qla82xx_rd_32(ha, QLA82XX_ROM_LOCK_ID);
   ql_dbg(ql_dbg_p3p, vha, 0xb085,
       "Failed to acquire rom lock, acquired by %d.\n",
       lock_owner);
   return -1;
  }
  timeout++;
 }
 qla82xx_wr_32(ha, QLA82XX_ROM_LOCK_ID, ROM_LOCK_DRIVER);
 return 0;
}
