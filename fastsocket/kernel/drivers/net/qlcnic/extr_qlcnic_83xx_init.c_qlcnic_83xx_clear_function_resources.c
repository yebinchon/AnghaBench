
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; int ahw; } ;
struct TYPE_4__ {int dev; } ;


 int BIT_31 ;
 scalar_t__ IS_QLC_83XX_USED (struct qlcnic_adapter*,int ,int ) ;
 int QLCNIC_CMD_STOP_NIC_FUNC ;
 int QLCRDX (int ,int ) ;
 int QLC_83XX_IDC_DRV_AUDIT ;
 int QLC_83XX_IDC_DRV_PRESENCE ;
 int dev_err (int *,char*) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static void qlcnic_83xx_clear_function_resources(struct qlcnic_adapter *adapter)
{
 struct qlcnic_cmd_args cmd;
 u32 presence_mask, audit_mask;
 int status;

 presence_mask = QLCRDX(adapter->ahw, QLC_83XX_IDC_DRV_PRESENCE);
 audit_mask = QLCRDX(adapter->ahw, QLC_83XX_IDC_DRV_AUDIT);

 if (IS_QLC_83XX_USED(adapter, presence_mask, audit_mask)) {
  qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_STOP_NIC_FUNC);
  cmd.req.arg[1] = BIT_31;
  status = qlcnic_issue_cmd(adapter, &cmd);
  if (status)
   dev_err(&adapter->pdev->dev,
    "Failed to clean up the function resources\n");
  qlcnic_free_mbx_args(&cmd);
 }
}
