
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct qla_hw_data {int * fw_options; } ;
struct TYPE_4__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int BIT_9 ;
 int memset (int *,int ,int) ;
 int ql2xetsenable ;
 int qla2x00_set_fw_options (TYPE_1__*,int *) ;

void
qla81xx_update_fw_options(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;

 if (!ql2xetsenable)
  return;


 memset(ha->fw_options, 0, sizeof(ha->fw_options));
 ha->fw_options[2] |= BIT_9;
 qla2x00_set_fw_options(vha, ha->fw_options);
}
