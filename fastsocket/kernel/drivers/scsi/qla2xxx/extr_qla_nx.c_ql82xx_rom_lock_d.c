
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_hw_data {int pdev; } ;
typedef int scsi_qla_host_t ;


 int cond_resched () ;
 int * pci_get_drvdata (int ) ;
 int ql_log (int ,int *,int,char*) ;
 int ql_log_warn ;
 scalar_t__ qla82xx_rom_lock (struct qla_hw_data*) ;
 int udelay (int) ;

__attribute__((used)) static int
ql82xx_rom_lock_d(struct qla_hw_data *ha)
{
 int loops = 0;
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);

 while ((qla82xx_rom_lock(ha) != 0) && (loops < 50000)) {
  udelay(100);
  cond_resched();
  loops++;
 }
 if (loops >= 50000) {
  ql_log(ql_log_warn, vha, 0xb010,
      "ROM lock failed.\n");
  return -1;
 }
 return 0;
}
