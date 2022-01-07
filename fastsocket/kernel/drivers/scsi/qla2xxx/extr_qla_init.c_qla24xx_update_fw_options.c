
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct qla_hw_data {int * fw_seriallink_options24; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int BIT_0 ;
 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;
 int QLA_SUCCESS ;
 int le16_to_cpu (int ) ;
 int ql_log (int ,TYPE_1__*,int,char*,int) ;
 int ql_log_warn ;
 int qla2x00_set_serdes_params (TYPE_1__*,int,int,int) ;

void
qla24xx_update_fw_options(scsi_qla_host_t *vha)
{
 int rval;
 struct qla_hw_data *ha = vha->hw;

 if (IS_QLA82XX(ha))
  return;


 if ((le16_to_cpu(ha->fw_seriallink_options24[0]) & BIT_0) == 0)
  return;

 rval = qla2x00_set_serdes_params(vha,
     le16_to_cpu(ha->fw_seriallink_options24[1]),
     le16_to_cpu(ha->fw_seriallink_options24[2]),
     le16_to_cpu(ha->fw_seriallink_options24[3]));
 if (rval != QLA_SUCCESS) {
  ql_log(ql_log_warn, vha, 0x0104,
      "Unable to update Serial Link options (%x).\n", rval);
 }
}
