
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {unsigned short working_srl; unsigned short working_branch; unsigned short working_build; unsigned short driver_srl_high; unsigned short driver_srl_low; unsigned short fw_on_ctlr_srl; unsigned short fw_on_ctlr_branch; unsigned short fw_on_ctlr_build; void* driver_build_low; void* driver_branch_low; void* driver_build_high; void* driver_branch_high; int driver_version; } ;
struct TYPE_6__ {TYPE_1__ tw_compat_info; int host; } ;
typedef TYPE_2__ TW_Device_Extension ;


 int TW_9000_ARCH_ID ;
 void* TW_BASE_FW_BRANCH ;
 void* TW_BASE_FW_BUILD ;
 unsigned short TW_BASE_FW_SRL ;
 int TW_CTLR_FW_COMPATIBLE ;
 void* TW_CURRENT_DRIVER_BRANCH ;
 void* TW_CURRENT_DRIVER_BUILD ;
 unsigned short TW_CURRENT_DRIVER_SRL ;
 int TW_DRIVER ;
 int TW_DRIVER_VERSION ;
 int TW_EXTENDED_INIT_CONNECT ;
 int TW_INIT_MESSAGE_CREDITS ;
 int TW_PRINTK (int ,int ,int,char*) ;
 int strlen (int ) ;
 int strncpy (int ,int ,int ) ;
 scalar_t__ twa_initconnection (TYPE_2__*,int ,int ,unsigned short,int ,void*,void*,unsigned short*,unsigned short*,unsigned short*,unsigned short*,int*) ;

__attribute__((used)) static int twa_check_srl(TW_Device_Extension *tw_dev, int *flashed)
{
 int retval = 1;
 unsigned short fw_on_ctlr_srl = 0, fw_on_ctlr_arch_id = 0;
 unsigned short fw_on_ctlr_branch = 0, fw_on_ctlr_build = 0;
 u32 init_connect_result = 0;

 if (twa_initconnection(tw_dev, TW_INIT_MESSAGE_CREDITS,
          TW_EXTENDED_INIT_CONNECT, TW_CURRENT_DRIVER_SRL,
          TW_9000_ARCH_ID, TW_CURRENT_DRIVER_BRANCH,
          TW_CURRENT_DRIVER_BUILD, &fw_on_ctlr_srl,
          &fw_on_ctlr_arch_id, &fw_on_ctlr_branch,
          &fw_on_ctlr_build, &init_connect_result)) {
  TW_PRINTK(tw_dev->host, TW_DRIVER, 0x7, "Initconnection failed while checking SRL");
  goto out;
 }

 tw_dev->tw_compat_info.working_srl = fw_on_ctlr_srl;
 tw_dev->tw_compat_info.working_branch = fw_on_ctlr_branch;
 tw_dev->tw_compat_info.working_build = fw_on_ctlr_build;


 if (!(init_connect_result & TW_CTLR_FW_COMPATIBLE)) {
  if (twa_initconnection(tw_dev, TW_INIT_MESSAGE_CREDITS,
           TW_EXTENDED_INIT_CONNECT,
           TW_BASE_FW_SRL, TW_9000_ARCH_ID,
           TW_BASE_FW_BRANCH, TW_BASE_FW_BUILD,
           &fw_on_ctlr_srl, &fw_on_ctlr_arch_id,
           &fw_on_ctlr_branch, &fw_on_ctlr_build,
           &init_connect_result)) {
   TW_PRINTK(tw_dev->host, TW_DRIVER, 0xa, "Initconnection (base mode) failed while checking SRL");
   goto out;
  }
  if (!(init_connect_result & TW_CTLR_FW_COMPATIBLE)) {
   if (TW_CURRENT_DRIVER_SRL > fw_on_ctlr_srl) {
    TW_PRINTK(tw_dev->host, TW_DRIVER, 0x32, "Firmware and driver incompatibility: please upgrade firmware");
   } else {
    TW_PRINTK(tw_dev->host, TW_DRIVER, 0x33, "Firmware and driver incompatibility: please upgrade driver");
   }
   goto out;
  }
  tw_dev->tw_compat_info.working_srl = TW_BASE_FW_SRL;
  tw_dev->tw_compat_info.working_branch = TW_BASE_FW_BRANCH;
  tw_dev->tw_compat_info.working_build = TW_BASE_FW_BUILD;
 }


 strncpy(tw_dev->tw_compat_info.driver_version, TW_DRIVER_VERSION, strlen(TW_DRIVER_VERSION));
 tw_dev->tw_compat_info.driver_srl_high = TW_CURRENT_DRIVER_SRL;
 tw_dev->tw_compat_info.driver_branch_high = TW_CURRENT_DRIVER_BRANCH;
 tw_dev->tw_compat_info.driver_build_high = TW_CURRENT_DRIVER_BUILD;
 tw_dev->tw_compat_info.driver_srl_low = TW_BASE_FW_SRL;
 tw_dev->tw_compat_info.driver_branch_low = TW_BASE_FW_BRANCH;
 tw_dev->tw_compat_info.driver_build_low = TW_BASE_FW_BUILD;
 tw_dev->tw_compat_info.fw_on_ctlr_srl = fw_on_ctlr_srl;
 tw_dev->tw_compat_info.fw_on_ctlr_branch = fw_on_ctlr_branch;
 tw_dev->tw_compat_info.fw_on_ctlr_build = fw_on_ctlr_build;

 retval = 0;
out:
 return retval;
}
