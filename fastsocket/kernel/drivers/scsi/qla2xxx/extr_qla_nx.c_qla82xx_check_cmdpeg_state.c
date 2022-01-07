
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qla_hw_data {int hw_lock; int pdev; } ;
typedef int scsi_qla_host_t ;


 int CRB_CMDPEG_STATE ;



 int QLA82XX_ROMUSB_GLB_PEGTUNE_DONE ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int msleep (int) ;
 int * pci_get_drvdata (int ) ;
 int ql_log (int ,int *,int,char*,int,...) ;
 int ql_log_fatal ;
 int ql_log_info ;
 int qla82xx_rd_32 (struct qla_hw_data*,int ) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int const) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static int
qla82xx_check_cmdpeg_state(struct qla_hw_data *ha)
{
 u32 val = 0;
 int retries = 60;
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);

 do {
  read_lock(&ha->hw_lock);
  val = qla82xx_rd_32(ha, CRB_CMDPEG_STATE);
  read_unlock(&ha->hw_lock);

  switch (val) {
  case 129:
  case 130:
   return QLA_SUCCESS;
  case 128:
   break;
  default:
   break;
  }
  ql_log(ql_log_info, vha, 0x00a8,
      "CRB_CMDPEG_STATE: 0x%x and retries:0x%x.\n",
      val, retries);

  msleep(500);

 } while (--retries);

 ql_log(ql_log_fatal, vha, 0x00a9,
     "Cmd Peg initialization failed: 0x%x.\n", val);

 val = qla82xx_rd_32(ha, QLA82XX_ROMUSB_GLB_PEGTUNE_DONE);
 read_lock(&ha->hw_lock);
 qla82xx_wr_32(ha, CRB_CMDPEG_STATE, 128);
 read_unlock(&ha->hw_lock);
 return QLA_FUNCTION_FAILED;
}
