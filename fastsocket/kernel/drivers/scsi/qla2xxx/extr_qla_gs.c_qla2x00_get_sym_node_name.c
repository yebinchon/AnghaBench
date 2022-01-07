
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {char* fw_version; } ;
struct qla_hw_data {char* model_number; int fw_major_version; int fw_minor_version; int fw_subminor_version; TYPE_1__ mr; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 scalar_t__ IS_QLAFX00 (struct qla_hw_data*) ;
 char* qla2x00_version_str ;
 int sprintf (int *,char*,char*,...) ;

void
qla2x00_get_sym_node_name(scsi_qla_host_t *vha, uint8_t *snn)
{
 struct qla_hw_data *ha = vha->hw;

 if (IS_QLAFX00(ha))
  sprintf(snn, "%s FW:v%s DVR:v%s", ha->model_number,
      ha->mr.fw_version, qla2x00_version_str);
 else
  sprintf(snn, "%s FW:v%d.%02d.%02d DVR:v%s", ha->model_number,
      ha->fw_major_version, ha->fw_minor_version,
      ha->fw_subminor_version, qla2x00_version_str);
}
