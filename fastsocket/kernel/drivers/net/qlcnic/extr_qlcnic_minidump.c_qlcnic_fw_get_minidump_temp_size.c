
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ rsp; } ;
struct qlcnic_adapter {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int QLCNIC_CMD_TEMP_SIZE ;
 int QLCNIC_RCODE_SUCCESS ;
 scalar_t__ qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 scalar_t__ qlcnic_fw_flash_get_minidump_temp_size (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static int qlcnic_fw_get_minidump_temp_size(struct qlcnic_adapter *adapter,
         u32 *version, u32 *temp_size,
         u8 *use_flash_temp)
{
 int err = 0;
 struct qlcnic_cmd_args cmd;

 if (qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_TEMP_SIZE))
  return -ENOMEM;

 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err != QLCNIC_RCODE_SUCCESS) {
  if (qlcnic_fw_flash_get_minidump_temp_size(adapter, &cmd)) {
   qlcnic_free_mbx_args(&cmd);
   return -EIO;
  }
  *use_flash_temp = 1;
 }

 *temp_size = cmd.rsp.arg[2];
 *version = cmd.rsp.arg[3];
 qlcnic_free_mbx_args(&cmd);

 if (!(*temp_size))
  return -EIO;

 return 0;
}
