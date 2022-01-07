
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_hw_data {int pdev; } ;
typedef int scsi_qla_host_t ;


 int QLA2XXX_DRIVER_NAME ;
 int QLA82XX_ROMUSB_GLB_STATUS ;
 int * pci_get_drvdata (int ) ;
 int ql_dbg (int ,int *,int,char*,int ) ;
 int ql_dbg_p3p ;
 long qla82xx_rd_32 (struct qla_hw_data*,int ) ;
 long rom_max_timeout ;

__attribute__((used)) static int
qla82xx_wait_rom_busy(struct qla_hw_data *ha)
{
 long timeout = 0;
 long done = 0 ;
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);

 while (done == 0) {
  done = qla82xx_rd_32(ha, QLA82XX_ROMUSB_GLB_STATUS);
  done &= 4;
  timeout++;
  if (timeout >= rom_max_timeout) {
   ql_dbg(ql_dbg_p3p, vha, 0xb00a,
       "%s: Timeout reached waiting for rom busy.\n",
       QLA2XXX_DRIVER_NAME);
   return -1;
  }
 }
 return 0;
}
