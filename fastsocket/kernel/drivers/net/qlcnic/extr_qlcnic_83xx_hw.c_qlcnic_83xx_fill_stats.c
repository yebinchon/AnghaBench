
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int num; } ;
struct qlcnic_cmd_args {TYPE_1__ rsp; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 int QLCNIC_RCODE_SUCCESS ;



 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int * qlcnic_83xx_copy_stats (struct qlcnic_cmd_args*,int *,int) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static u64 *qlcnic_83xx_fill_stats(struct qlcnic_adapter *adapter,
       struct qlcnic_cmd_args *cmd, u64 *data,
       int type, int *ret)
{
 int err, k, total_regs;

 *ret = 0;
 err = qlcnic_issue_cmd(adapter, cmd);
 if (err != QLCNIC_RCODE_SUCCESS) {
  dev_info(&adapter->pdev->dev,
    "Error in get statistics mailbox command\n");
  *ret = -EIO;
  return data;
 }
 total_regs = cmd->rsp.num;
 switch (type) {
 case 130:

  for (k = 2; k < 28; k += 2)
   data = qlcnic_83xx_copy_stats(cmd, data, k);


  for (k += 6; k < 60; k += 2)
   data = qlcnic_83xx_copy_stats(cmd, data, k);


  for (k += 6; k < 80; k += 2)
   data = qlcnic_83xx_copy_stats(cmd, data, k);

  for (; k < total_regs; k += 2)
   data = qlcnic_83xx_copy_stats(cmd, data, k);
  break;
 case 129:
  for (k = 2; k < 8; k += 2)
   data = qlcnic_83xx_copy_stats(cmd, data, k);

  for (k += 2; k < 24; k += 2)
   data = qlcnic_83xx_copy_stats(cmd, data, k);

  for (k += 2; k < total_regs; k += 2)
   data = qlcnic_83xx_copy_stats(cmd, data, k);
  break;
 case 128:
  for (k = 2; k < 10; k += 2)
   data = qlcnic_83xx_copy_stats(cmd, data, k);

  for (k += 2; k < total_regs; k += 2)
   data = qlcnic_83xx_copy_stats(cmd, data, k);
  break;
 default:
  dev_warn(&adapter->pdev->dev, "Unknown get statistics mode\n");
  *ret = -EIO;
 }
 return data;
}
