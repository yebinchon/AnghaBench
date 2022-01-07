
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qla_hw_data {int pdev; } ;
typedef int scsi_qla_host_t ;


 int BLOCK_PROTECT_BITS ;
 int * pci_get_drvdata (int ) ;
 int ql82xx_rom_lock_d (struct qla_hw_data*) ;
 int ql_log (int ,int *,int,char*) ;
 int ql_log_warn ;
 int qla82xx_read_status_reg (struct qla_hw_data*,int*) ;
 int qla82xx_rom_unlock (struct qla_hw_data*) ;
 scalar_t__ qla82xx_write_disable_flash (struct qla_hw_data*) ;
 int qla82xx_write_status_reg (struct qla_hw_data*,int) ;

__attribute__((used)) static int
qla82xx_unprotect_flash(struct qla_hw_data *ha)
{
 int ret;
 uint32_t val;
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);

 ret = ql82xx_rom_lock_d(ha);
 if (ret < 0) {
  ql_log(ql_log_warn, vha, 0xb014,
      "ROM Lock failed.\n");
  return ret;
 }

 ret = qla82xx_read_status_reg(ha, &val);
 if (ret < 0)
  goto done_unprotect;

 val &= ~(BLOCK_PROTECT_BITS << 2);
 ret = qla82xx_write_status_reg(ha, val);
 if (ret < 0) {
  val |= (BLOCK_PROTECT_BITS << 2);
  qla82xx_write_status_reg(ha, val);
 }

 if (qla82xx_write_disable_flash(ha) != 0)
  ql_log(ql_log_warn, vha, 0xb015,
      "Write disable failed.\n");

done_unprotect:
 qla82xx_rom_unlock(ha);
 return ret;
}
