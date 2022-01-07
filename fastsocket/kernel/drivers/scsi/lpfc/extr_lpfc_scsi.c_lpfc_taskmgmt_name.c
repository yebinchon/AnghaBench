
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
__attribute__((used)) static char *
lpfc_taskmgmt_name(uint8_t task_mgmt_cmd)
{
 switch (task_mgmt_cmd) {
 case 134:
  return "ABORT_TASK_SET";
 case 131:
  return "FCP_CLEAR_TASK_SET";
 case 133:
  return "FCP_BUS_RESET";
 case 130:
  return "FCP_LUN_RESET";
 case 129:
  return "FCP_TARGET_RESET";
 case 132:
  return "FCP_CLEAR_ACA";
 case 128:
  return "FCP_TERMINATE_TASK";
 default:
  return "unknown";
 }
}
