
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_3__ {void** arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
typedef int drv_string ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 int QLCNIC_CMD_SET_DRV_VER ;
 int _QLCNIC_LINUX_MAJOR ;
 int _QLCNIC_LINUX_MINOR ;
 int _QLCNIC_LINUX_SUBVERSION ;
 int dev_info (int *,char*) ;
 int memcpy (void**,char*,int) ;
 int memset (char*,int ,int) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int snprintf (char*,int,char*,int,int,int) ;

int qlcnic_fw_cmd_set_drv_version(struct qlcnic_adapter *adapter)
{
 struct qlcnic_cmd_args cmd;
 u32 arg1, arg2, arg3;
 char drv_string[12];
 int err = 0;

 memset(drv_string, 0, sizeof(drv_string));
 snprintf(drv_string, sizeof(drv_string), "%d"".""%d"".""%d",
   _QLCNIC_LINUX_MAJOR, _QLCNIC_LINUX_MINOR,
   _QLCNIC_LINUX_SUBVERSION);

 qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_SET_DRV_VER);
 memcpy(&arg1, drv_string, sizeof(u32));
 memcpy(&arg2, drv_string + 4, sizeof(u32));
 memcpy(&arg3, drv_string + 8, sizeof(u32));

 cmd.req.arg[1] = arg1;
 cmd.req.arg[2] = arg2;
 cmd.req.arg[3] = arg3;

 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err) {
  dev_info(&adapter->pdev->dev,
    "Failed to set driver version in firmware\n");
  return -EIO;
 }

 return 0;
}
