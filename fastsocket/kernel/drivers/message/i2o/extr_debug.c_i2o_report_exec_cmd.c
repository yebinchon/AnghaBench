
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
 int printk (char*,...) ;

__attribute__((used)) static void i2o_report_exec_cmd(u8 cmd)
{
 switch (cmd) {
 case 160:
  printk("EXEC_ADAPTER_ASSIGN, ");
  break;
 case 157:
  printk("EXEC_ADAPTER_READ, ");
  break;
 case 156:
  printk("EXEC_ADAPTER_RELEASE, ");
  break;
 case 154:
  printk("EXEC_BIOS_INFO_SET, ");
  break;
 case 153:
  printk("EXEC_BOOT_DEVICE_SET, ");
  break;
 case 152:
  printk("EXEC_CONFIG_VALIDATE, ");
  break;
 case 151:
  printk("EXEC_CONN_SETUP, ");
  break;
 case 150:
  printk("EXEC_DDM_DESTROY, ");
  break;
 case 149:
  printk("EXEC_DDM_ENABLE, ");
  break;
 case 148:
  printk("EXEC_DDM_QUIESCE, ");
  break;
 case 147:
  printk("EXEC_DDM_RESET, ");
  break;
 case 146:
  printk("EXEC_DDM_SUSPEND, ");
  break;
 case 145:
  printk("EXEC_DEVICE_ASSIGN, ");
  break;
 case 144:
  printk("EXEC_DEVICE_RELEASE, ");
  break;
 case 143:
  printk("EXEC_HRT_GET, ");
  break;
 case 159:
  printk("EXEC_IOP_CLEAR, ");
  break;
 case 158:
  printk("EXEC_IOP_CONNECT, ");
  break;
 case 155:
  printk("EXEC_IOP_RESET, ");
  break;
 case 142:
  printk("EXEC_LCT_NOTIFY, ");
  break;
 case 141:
  printk("EXEC_OUTBOUND_INIT, ");
  break;
 case 140:
  printk("EXEC_PATH_ENABLE, ");
  break;
 case 139:
  printk("EXEC_PATH_QUIESCE, ");
  break;
 case 138:
  printk("EXEC_PATH_RESET, ");
  break;
 case 137:
  printk("EXEC_STATIC_MF_CREATE, ");
  break;
 case 136:
  printk("EXEC_STATIC_MF_RELEASE, ");
  break;
 case 135:
  printk("EXEC_STATUS_GET, ");
  break;
 case 134:
  printk("EXEC_SW_DOWNLOAD, ");
  break;
 case 132:
  printk("EXEC_SW_UPLOAD, ");
  break;
 case 133:
  printk("EXEC_SW_REMOVE, ");
  break;
 case 131:
  printk("EXEC_SYS_ENABLE, ");
  break;
 case 130:
  printk("EXEC_SYS_MODIFY, ");
  break;
 case 129:
  printk("EXEC_SYS_QUIESCE, ");
  break;
 case 128:
  printk("EXEC_SYS_TAB_SET, ");
  break;
 default:
  printk("Cmd = %#02x, ", cmd);
 }
}
