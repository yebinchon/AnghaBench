
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct req_que {int length; } ;
struct qla_hw_data {int fw_transfer_size; struct req_que** req_q_map; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;
 int QLA_SUCCESS ;
 int REQUEST_ENTRY_SIZE ;
 int ql_log (int ,TYPE_1__*,int,char*) ;
 int ql_log_warn ;
 int qla2x00_mbx_reg_test (TYPE_1__*) ;

int
qla24xx_chip_diag(scsi_qla_host_t *vha)
{
 int rval;
 struct qla_hw_data *ha = vha->hw;
 struct req_que *req = ha->req_q_map[0];

 if (IS_QLA82XX(ha))
  return QLA_SUCCESS;

 ha->fw_transfer_size = REQUEST_ENTRY_SIZE * req->length;

 rval = qla2x00_mbx_reg_test(vha);
 if (rval) {
  ql_log(ql_log_warn, vha, 0x0082,
      "Failed mailbox send register test.\n");
 } else {

  rval = QLA_SUCCESS;
 }

 return rval;
}
