
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct qla_hw_data {int dummy; } ;
struct TYPE_4__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int CRB_TEMP_STATE ;
 scalar_t__ QLA82XX_TEMP_PANIC ;
 scalar_t__ QLA82XX_TEMP_WARN ;
 int ql_log (int ,TYPE_1__*,int,char*,scalar_t__) ;
 int ql_log_warn ;
 scalar_t__ qla82xx_get_temp_state (scalar_t__) ;
 scalar_t__ qla82xx_get_temp_val (scalar_t__) ;
 scalar_t__ qla82xx_rd_32 (struct qla_hw_data*,int ) ;

__attribute__((used)) static int qla82xx_check_temp(scsi_qla_host_t *vha)
{
 uint32_t temp, temp_state, temp_val;
 struct qla_hw_data *ha = vha->hw;

 temp = qla82xx_rd_32(ha, CRB_TEMP_STATE);
 temp_state = qla82xx_get_temp_state(temp);
 temp_val = qla82xx_get_temp_val(temp);

 if (temp_state == QLA82XX_TEMP_PANIC) {
  ql_log(ql_log_warn, vha, 0x600e,
      "Device temperature %d degrees C exceeds "
      " maximum allowed. Hardware has been shut down.\n",
      temp_val);
  return 1;
 } else if (temp_state == QLA82XX_TEMP_WARN) {
  ql_log(ql_log_warn, vha, 0x600f,
      "Device temperature %d degrees C exceeds "
      "operating range. Immediate action needed.\n",
      temp_val);
 }
 return 0;
}
