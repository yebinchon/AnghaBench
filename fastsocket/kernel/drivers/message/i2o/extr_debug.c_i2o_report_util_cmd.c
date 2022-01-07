
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
 int printk (char*,...) ;

__attribute__((used)) static void i2o_report_util_cmd(u8 cmd)
{
 switch (cmd) {
 case 132:
  printk("UTIL_NOP, ");
  break;
 case 141:
  printk("UTIL_ABORT, ");
  break;
 case 140:
  printk("UTIL_CLAIM, ");
  break;
 case 129:
  printk("UTIL_CLAIM_RELEASE, ");
  break;
 case 139:
  printk("UTIL_CONFIG_DIALOG, ");
  break;
 case 137:
  printk("UTIL_DEVICE_RESERVE, ");
  break;
 case 138:
  printk("UTIL_DEVICE_RELEASE, ");
  break;
 case 136:
  printk("UTIL_EVENT_ACKNOWLEDGE, ");
  break;
 case 135:
  printk("UTIL_EVENT_REGISTER, ");
  break;
 case 134:
  printk("UTIL_LOCK, ");
  break;
 case 133:
  printk("UTIL_LOCK_RELEASE, ");
  break;
 case 131:
  printk("UTIL_PARAMS_GET, ");
  break;
 case 130:
  printk("UTIL_PARAMS_SET, ");
  break;
 case 128:
  printk("UTIL_REPLY_FAULT_NOTIFY, ");
  break;
 default:
  printk("Cmd = %0#2x, ", cmd);
 }
}
