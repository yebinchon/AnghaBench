
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;
typedef int fc_port_t ;


 int ql_log (int ,struct scsi_qla_host*,int,char*,int) ;
 int ql_log_info ;
 int qla2x00_mark_device_lost (struct scsi_qla_host*,int *,int ,int ) ;
 int * qlafx00_get_fcport (struct scsi_qla_host*,int) ;

__attribute__((used)) static void
qlafx00_tgt_detach(struct scsi_qla_host *vha, int tgt_id)
{
 fc_port_t *fcport;

 ql_log(ql_log_info, vha, 0x5073,
     "Detach TGT-ID: 0x%x\n", tgt_id);

 fcport = qlafx00_get_fcport(vha, tgt_id);
 if (!fcport)
  return;

 qla2x00_mark_device_lost(vha, fcport, 0, 0);

 return;
}
