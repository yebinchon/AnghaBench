
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_6__ {void** arg; } ;
struct TYPE_5__ {void** arg; } ;
struct qlcnic_cmd_args {TYPE_2__ req; TYPE_1__ rsp; } ;
struct qlcnic_adapter {TYPE_4__* pdev; TYPE_3__* ahw; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {void** mbox_reg; } ;


 int LSW (int ) ;
 int QLCNIC_CMD_GET_LED_CONFIG ;
 int QLCNIC_CMD_SET_LED_CONFIG ;
 void* QLC_83XX_ENABLE_BEACON ;
 int QLC_83XX_LED_CONFIG ;
 int dev_err (int *,char*) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

int qlcnic_83xx_config_led(struct qlcnic_adapter *adapter, u32 state,
      u32 beacon)
{
 struct qlcnic_cmd_args cmd;
 u32 mbx_in;
 int i, status = 0;

 if (state) {

  qlcnic_alloc_mbx_args(&cmd, adapter,
          QLCNIC_CMD_GET_LED_CONFIG);
  status = qlcnic_issue_cmd(adapter, &cmd);
  if (status) {
   dev_err(&adapter->pdev->dev,
    "Get led config failed.\n");
   goto mbx_err;
  } else {
   for (i = 0; i < 4; i++)
    adapter->ahw->mbox_reg[i] = cmd.rsp.arg[i+1];
  }
  qlcnic_free_mbx_args(&cmd);

  mbx_in = (LSW(QLC_83XX_LED_CONFIG) << 16) |
     LSW(QLC_83XX_LED_CONFIG);
  qlcnic_alloc_mbx_args(&cmd, adapter,
          QLCNIC_CMD_SET_LED_CONFIG);
  cmd.req.arg[1] = mbx_in;
  cmd.req.arg[2] = mbx_in;
  cmd.req.arg[3] = mbx_in;
  if (beacon)
   cmd.req.arg[4] = QLC_83XX_ENABLE_BEACON;
  status = qlcnic_issue_cmd(adapter, &cmd);
  if (status) {
   dev_err(&adapter->pdev->dev,
    "Set led config failed.\n");
  }
mbx_err:
  qlcnic_free_mbx_args(&cmd);
  return status;

 } else {

  qlcnic_alloc_mbx_args(&cmd, adapter,
          QLCNIC_CMD_SET_LED_CONFIG);
  cmd.req.arg[1] = adapter->ahw->mbox_reg[0];
  cmd.req.arg[2] = adapter->ahw->mbox_reg[1];
  cmd.req.arg[3] = adapter->ahw->mbox_reg[2];
  if (beacon)
   cmd.req.arg[4] = adapter->ahw->mbox_reg[3];
  status = qlcnic_issue_cmd(adapter, &cmd);
  if (status)
   dev_err(&adapter->pdev->dev,
    "Restoring led config failed.\n");
  qlcnic_free_mbx_args(&cmd);
  return status;
 }
}
