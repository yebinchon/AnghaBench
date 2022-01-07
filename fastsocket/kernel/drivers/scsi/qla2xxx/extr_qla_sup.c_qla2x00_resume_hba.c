
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int host; int dpc_flags; struct qla_hw_data* hw; } ;
struct qla_hw_data {int mbx_cmd_flags; } ;


 int ISP_ABORT_NEEDED ;
 int MBX_UPDATE_FLASH_ACTIVE ;
 int clear_bit (int ,int *) ;
 int qla2x00_wait_for_chip_reset (struct scsi_qla_host*) ;
 int qla2xxx_wake_dpc (struct scsi_qla_host*) ;
 int scsi_unblock_requests (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void
qla2x00_resume_hba(struct scsi_qla_host *vha)
{
 struct qla_hw_data *ha = vha->hw;


 clear_bit(MBX_UPDATE_FLASH_ACTIVE, &ha->mbx_cmd_flags);
 set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
 qla2xxx_wake_dpc(vha);
 qla2x00_wait_for_chip_reset(vha);
 scsi_unblock_requests(vha->host);
}
