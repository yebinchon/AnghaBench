
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fc_bsg_job {TYPE_3__* request; } ;
struct TYPE_4__ {int* vendor_cmd; } ;
struct TYPE_5__ {TYPE_1__ h_vendor; } ;
struct TYPE_6__ {TYPE_2__ rqst_data; } ;


 int ENOSYS ;
 int qla24xx_iidma (struct fc_bsg_job*) ;
 int qla24xx_proc_fcp_prio_cfg_cmd (struct fc_bsg_job*) ;
 int qla24xx_process_bidir_cmd (struct fc_bsg_job*) ;
 int qla2x00_process_loopback (struct fc_bsg_job*) ;
 int qla2x00_read_fru_status (struct fc_bsg_job*) ;
 int qla2x00_read_i2c (struct fc_bsg_job*) ;
 int qla2x00_read_optrom (struct fc_bsg_job*) ;
 int qla2x00_update_fru_versions (struct fc_bsg_job*) ;
 int qla2x00_update_optrom (struct fc_bsg_job*) ;
 int qla2x00_write_fru_status (struct fc_bsg_job*) ;
 int qla2x00_write_i2c (struct fc_bsg_job*) ;
 int qla84xx_mgmt_cmd (struct fc_bsg_job*) ;
 int qla84xx_reset (struct fc_bsg_job*) ;
 int qla84xx_updatefw (struct fc_bsg_job*) ;
 int qlafx00_mgmt_cmd (struct fc_bsg_job*) ;

__attribute__((used)) static int
qla2x00_process_vendor_specific(struct fc_bsg_job *bsg_job)
{
 switch (bsg_job->request->rqst_data.h_vendor.vendor_cmd[0]) {
 case 135:
  return qla2x00_process_loopback(bsg_job);

 case 141:
  return qla84xx_reset(bsg_job);

 case 140:
  return qla84xx_updatefw(bsg_job);

 case 142:
  return qla84xx_mgmt_cmd(bsg_job);

 case 136:
  return qla24xx_iidma(bsg_job);

 case 138:
  return qla24xx_proc_fcp_prio_cfg_cmd(bsg_job);

 case 134:
  return qla2x00_read_optrom(bsg_job);

 case 130:
  return qla2x00_update_optrom(bsg_job);

 case 131:
  return qla2x00_update_fru_versions(bsg_job);

 case 133:
  return qla2x00_read_fru_status(bsg_job);

 case 129:
  return qla2x00_write_fru_status(bsg_job);

 case 128:
  return qla2x00_write_i2c(bsg_job);

 case 132:
  return qla2x00_read_i2c(bsg_job);

 case 139:
  return qla24xx_process_bidir_cmd(bsg_job);

 case 137:
  return qlafx00_mgmt_cmd(bsg_job);
 default:
  return -ENOSYS;
 }
}
