
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int beacon_blink_led; } ;


 scalar_t__ IS_QLA2031 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA8031 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA81XX (struct qla_hw_data*) ;
 int IS_QLA83XX (struct qla_hw_data*) ;
 int QLA_SUCCESS ;
 int msleep (int) ;
 int qla81xx_get_led_config (struct scsi_qla_host*,int*) ;
 int qla81xx_set_led_config (struct scsi_qla_host*,int*) ;
 int qla83xx_rd_reg (struct scsi_qla_host*,int,int*) ;
 int qla83xx_select_led_port (struct qla_hw_data*) ;
 int qla83xx_wr_reg (struct scsi_qla_host*,int,int) ;

void
qla83xx_beacon_blink(struct scsi_qla_host *vha)
{
 uint32_t led_select_value;
 struct qla_hw_data *ha = vha->hw;
 uint16_t led_cfg[6];
 uint16_t orig_led_cfg[6];
 uint32_t led_10_value, led_43_value;

 if (!IS_QLA83XX(ha) && !IS_QLA81XX(ha))
  return;

 if (!ha->beacon_blink_led)
  return;

 if (IS_QLA2031(ha)) {
  led_select_value = qla83xx_select_led_port(ha);

  qla83xx_wr_reg(vha, led_select_value, 0x40002000);
  qla83xx_wr_reg(vha, led_select_value + 4, 0x40002000);
  msleep(1000);
  qla83xx_wr_reg(vha, led_select_value, 0x40004000);
  qla83xx_wr_reg(vha, led_select_value + 4 , 0x40004000);
 } else if (IS_QLA8031(ha)) {
  led_select_value = qla83xx_select_led_port(ha);

  qla83xx_rd_reg(vha, led_select_value, &led_10_value);
  qla83xx_rd_reg(vha, led_select_value + 0x10, &led_43_value);
  qla83xx_wr_reg(vha, led_select_value, 0x01f44000);
  msleep(500);
  qla83xx_wr_reg(vha, led_select_value, 0x400001f4);
  msleep(1000);
  qla83xx_wr_reg(vha, led_select_value, led_10_value);
  qla83xx_wr_reg(vha, led_select_value + 0x10, led_43_value);
 } else if (IS_QLA81XX(ha)) {
  int rval;


  rval = qla81xx_get_led_config(vha, orig_led_cfg);

  if (rval == QLA_SUCCESS) {
   if (IS_QLA81XX(ha)) {
       led_cfg[0] = 0x4000;
       led_cfg[1] = 0x2000;
       led_cfg[2] = 0;
       led_cfg[3] = 0;
       led_cfg[4] = 0;
       led_cfg[5] = 0;
   } else {
       led_cfg[0] = 0x4000;
       led_cfg[1] = 0x4000;
       led_cfg[2] = 0x4000;
       led_cfg[3] = 0x2000;
       led_cfg[4] = 0;
       led_cfg[5] = 0x2000;
   }
   rval = qla81xx_set_led_config(vha, led_cfg);
   msleep(1000);
   if (IS_QLA81XX(ha)) {
       led_cfg[0] = 0x4000;
       led_cfg[1] = 0x2000;
       led_cfg[2] = 0;
   } else {
       led_cfg[0] = 0x4000;
       led_cfg[1] = 0x2000;
       led_cfg[2] = 0x4000;
       led_cfg[3] = 0x4000;
       led_cfg[4] = 0;
       led_cfg[5] = 0x2000;
   }
   rval = qla81xx_set_led_config(vha, led_cfg);
  }

  qla81xx_set_led_config(vha, orig_led_cfg);
 }
}
