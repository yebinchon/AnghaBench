
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_hw_data {int pdev; } ;
typedef int scsi_qla_host_t ;


 int * pci_get_drvdata (int ) ;
 int ql_log (int ,int *,int,char*) ;
 int ql_log_fatal ;
 int qla82xx_do_rom_fast_read (struct qla_hw_data*,int,int*) ;
 scalar_t__ qla82xx_rom_lock (struct qla_hw_data*) ;
 int qla82xx_rom_unlock (struct qla_hw_data*) ;
 int schedule () ;
 int udelay (int) ;

__attribute__((used)) static int
qla82xx_rom_fast_read(struct qla_hw_data *ha, int addr, int *valp)
{
 int ret, loops = 0;
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);

 while ((qla82xx_rom_lock(ha) != 0) && (loops < 50000)) {
  udelay(100);
  schedule();
  loops++;
 }
 if (loops >= 50000) {
  ql_log(ql_log_fatal, vha, 0x00b9,
      "Failed to acquire SEM2 lock.\n");
  return -1;
 }
 ret = qla82xx_do_rom_fast_read(ha, addr, valp);
 qla82xx_rom_unlock(ha);
 return ret;
}
