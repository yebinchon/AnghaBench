
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int scsi_qla_host_t ;


 int QLA83XX_IDC_DEV_STATE ;
 int QLA83XX_IDC_GRACEFUL_RESET ;
 int QLA8XXX_DEV_FAILED ;
 int QLA8XXX_DEV_INITIALIZING ;
 int QLA8XXX_DEV_READY ;
 int QLA_SUCCESS ;
 int __qla83xx_get_idc_control (int *,int *) ;
 int __qla83xx_set_idc_control (int *,int ) ;
 int ql_dbg (int ,int *,int,char*) ;
 int ql_dbg_p3p ;
 int ql_log (int ,int *,int,char*) ;
 int ql_log_fatal ;
 int ql_log_info ;
 int qla83xx_idc_lock (int *,int ) ;
 int qla83xx_idc_unlock (int *,int ) ;
 int qla83xx_restart_nic_firmware (int *) ;
 int qla83xx_wr_reg (int *,int ,int ) ;

__attribute__((used)) static int
qla83xx_device_bootstrap(scsi_qla_host_t *vha)
{
 int rval = QLA_SUCCESS;
 uint32_t idc_control;

 qla83xx_wr_reg(vha, QLA83XX_IDC_DEV_STATE, QLA8XXX_DEV_INITIALIZING);
 ql_log(ql_log_info, vha, 0xb069, "HW State: INITIALIZING.\n");


 __qla83xx_get_idc_control(vha, &idc_control);
 idc_control &= ~QLA83XX_IDC_GRACEFUL_RESET;
 __qla83xx_set_idc_control(vha, 0);

 qla83xx_idc_unlock(vha, 0);
 rval = qla83xx_restart_nic_firmware(vha);
 qla83xx_idc_lock(vha, 0);

 if (rval != QLA_SUCCESS) {
  ql_log(ql_log_fatal, vha, 0xb06a,
      "Failed to restart NIC f/w.\n");
  qla83xx_wr_reg(vha, QLA83XX_IDC_DEV_STATE, QLA8XXX_DEV_FAILED);
  ql_log(ql_log_info, vha, 0xb06b, "HW State: FAILED.\n");
 } else {
  ql_dbg(ql_dbg_p3p, vha, 0xb06c,
      "Success in restarting nic f/w.\n");
  qla83xx_wr_reg(vha, QLA83XX_IDC_DEV_STATE, QLA8XXX_DEV_READY);
  ql_log(ql_log_info, vha, 0xb06d, "HW State: READY.\n");
 }

 return rval;
}
