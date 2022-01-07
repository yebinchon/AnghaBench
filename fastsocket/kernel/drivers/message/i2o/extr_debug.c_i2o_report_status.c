
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i2o_message {int dummy; } ;


 int I2O_CMD_UTIL_EVT_REGISTER ;
 int MSG_FAIL ;
 int i2o_report_common_dsc (int) ;
 int i2o_report_common_status (int) ;
 int i2o_report_exec_cmd (int) ;
 int i2o_report_fail_status (int,int*) ;
 int i2o_report_util_cmd (int) ;
 int printk (char*,...) ;

void i2o_report_status(const char *severity, const char *str,
         struct i2o_message *m)
{
 u32 *msg = (u32 *) m;
 u8 cmd = (msg[1] >> 24) & 0xFF;
 u8 req_status = (msg[4] >> 24) & 0xFF;
 u16 detailed_status = msg[4] & 0xFFFF;

 if (cmd == I2O_CMD_UTIL_EVT_REGISTER)
  return;

 printk("%s%s: ", severity, str);

 if (cmd < 0x1F)
  i2o_report_util_cmd(cmd);

 else if (cmd >= 0xA0 && cmd <= 0xEF)
  i2o_report_exec_cmd(cmd);
 else
  printk("Cmd = %0#2x, ", cmd);

 if (msg[0] & MSG_FAIL) {
  i2o_report_fail_status(req_status, msg);
  return;
 }

 i2o_report_common_status(req_status);

 if (cmd < 0x1F || (cmd >= 0xA0 && cmd <= 0xEF))
  i2o_report_common_dsc(detailed_status);
 else
  printk(" / DetailedStatus = %0#4x.\n",
         detailed_status);
}
