
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_hw_data {int pdev; } ;
typedef int scsi_qla_host_t ;


 int * pci_get_drvdata (int ) ;
 int ql_log (int ,int *,int,char*) ;
 int ql_log_info ;
 scalar_t__ qla82xx_rom_lock (struct qla_hw_data*) ;
 int qla82xx_rom_unlock (struct qla_hw_data*) ;

__attribute__((used)) static void
qla82xx_rom_lock_recovery(struct qla_hw_data *ha)
{
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);

 if (qla82xx_rom_lock(ha))

  ql_log(ql_log_info, vha, 0xb022,
      "Resetting rom_lock.\n");






 qla82xx_rom_unlock(ha);
}
