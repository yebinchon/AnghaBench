
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qla_hw_data {int pdev; } ;
typedef int scsi_qla_host_t ;


 int QLA82XX_ROMUSB_ROM_ABYTE_CNT ;
 int cond_resched () ;
 int * pci_get_drvdata (int ) ;
 int ql_log (int ,int *,int,char*) ;
 int ql_log_warn ;
 int qla82xx_read_status_reg (struct qla_hw_data*,int*) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
qla82xx_flash_wait_write_finish(struct qla_hw_data *ha)
{
 long timeout = 0;
 uint32_t done = 1 ;
 uint32_t val;
 int ret = 0;
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);

 qla82xx_wr_32(ha, QLA82XX_ROMUSB_ROM_ABYTE_CNT, 0);
 while ((done != 0) && (ret == 0)) {
  ret = qla82xx_read_status_reg(ha, &val);
  done = val & 1;
  timeout++;
  udelay(10);
  cond_resched();
  if (timeout >= 50000) {
   ql_log(ql_log_warn, vha, 0xb00d,
       "Timeout reached waiting for write finish.\n");
   return -1;
  }
 }
 return ret;
}
