
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct scsi_qla_host {int hw_lock; } ;


 int CRB_RCVPEG_STATE ;
 int DEBUG2 (int ) ;
 int KERN_INFO ;
 scalar_t__ PHAN_PEG_RCV_INITIALIZED ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,scalar_t__) ;
 scalar_t__ qla4_82xx_rd_32 (struct scsi_qla_host*,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static int qla4_82xx_rcvpeg_ready(struct scsi_qla_host *ha)
{
 uint32_t state = 0;
 int loops = 0;


 read_lock(&ha->hw_lock);
 state = qla4_82xx_rd_32(ha, CRB_RCVPEG_STATE);
 read_unlock(&ha->hw_lock);

 while ((state != PHAN_PEG_RCV_INITIALIZED) && (loops < 30000)) {
  udelay(100);

  read_lock(&ha->hw_lock);
  state = qla4_82xx_rd_32(ha, CRB_RCVPEG_STATE);
  read_unlock(&ha->hw_lock);

  loops++;
 }

 if (loops >= 30000) {
  DEBUG2(ql4_printk(KERN_INFO, ha,
      "Receive Peg initialization not complete: 0x%x.\n", state));
  return QLA_ERROR;
 }

 return QLA_SUCCESS;
}
