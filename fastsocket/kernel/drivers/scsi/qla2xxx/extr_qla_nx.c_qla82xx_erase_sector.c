
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_hw_data {int pdev; } ;
typedef int scsi_qla_host_t ;


 int M25P_INSTR_SE ;
 int QLA82XX_ROMUSB_ROM_ABYTE_CNT ;
 int QLA82XX_ROMUSB_ROM_ADDRESS ;
 int QLA82XX_ROMUSB_ROM_INSTR_OPCODE ;
 int * pci_get_drvdata (int ) ;
 int ql82xx_rom_lock_d (struct qla_hw_data*) ;
 int ql_log (int ,int *,int,char*) ;
 int ql_log_warn ;
 int qla82xx_flash_set_write_enable (struct qla_hw_data*) ;
 int qla82xx_flash_wait_write_finish (struct qla_hw_data*) ;
 int qla82xx_rom_unlock (struct qla_hw_data*) ;
 scalar_t__ qla82xx_wait_rom_done (struct qla_hw_data*) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int) ;

__attribute__((used)) static int
qla82xx_erase_sector(struct qla_hw_data *ha, int addr)
{
 int ret = 0;
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);

 ret = ql82xx_rom_lock_d(ha);
 if (ret < 0) {
  ql_log(ql_log_warn, vha, 0xb019,
      "ROM Lock failed.\n");
  return ret;
 }

 qla82xx_flash_set_write_enable(ha);
 qla82xx_wr_32(ha, QLA82XX_ROMUSB_ROM_ADDRESS, addr);
 qla82xx_wr_32(ha, QLA82XX_ROMUSB_ROM_ABYTE_CNT, 3);
 qla82xx_wr_32(ha, QLA82XX_ROMUSB_ROM_INSTR_OPCODE, M25P_INSTR_SE);

 if (qla82xx_wait_rom_done(ha)) {
  ql_log(ql_log_warn, vha, 0xb01a,
      "Error waiting for rom done.\n");
  ret = -1;
  goto done;
 }
 ret = qla82xx_flash_wait_write_finish(ha);
done:
 qla82xx_rom_unlock(ha);
 return ret;
}
