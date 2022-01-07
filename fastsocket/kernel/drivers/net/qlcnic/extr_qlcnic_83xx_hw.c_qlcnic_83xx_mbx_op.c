
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_5__ {int status; } ;
struct qlcnic_hardware_context {int mbx_lock; TYPE_1__ idc; } ;
struct TYPE_7__ {scalar_t__* arg; int num; } ;
struct TYPE_6__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_3__ req; TYPE_2__ rsp; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; TYPE_4__* pdev; } ;
struct TYPE_8__ {int dev; } ;


 int DRV ;
 scalar_t__ LSW (scalar_t__) ;
 int QLCDB (struct qlcnic_adapter*,int ,char*,scalar_t__) ;
 int QLCNIC_CLR_OWNER ;
 scalar_t__ QLCNIC_CMD_CONFIG_MAC_VLAN ;
 int QLCNIC_FW_MBX_CTRL ;
 int QLCNIC_HOST_MBX_CTRL ;
 scalar_t__ QLCNIC_MBX_ASYNC_EVENT ;
 int QLCNIC_MBX_FW (struct qlcnic_hardware_context*,int ) ;
 int QLCNIC_MBX_HOST (struct qlcnic_hardware_context*,int) ;
 scalar_t__ QLCNIC_MBX_NUM_REGS (scalar_t__) ;

 scalar_t__ QLCNIC_MBX_RSP (scalar_t__) ;

 int QLCNIC_MBX_STATUS (scalar_t__) ;
 scalar_t__ QLCNIC_RCODE_SUCCESS ;
 scalar_t__ QLCNIC_RCODE_TIMEOUT ;
 int QLCNIC_SET_OWNER ;
 scalar_t__ QLCRDX (struct qlcnic_hardware_context*,int ) ;
 int QLCWRX (struct qlcnic_hardware_context*,int ,int ) ;
 int QLC_83XX_MBX_READY ;
 int __qlcnic_83xx_process_aen (struct qlcnic_adapter*) ;
 int dev_err (int *,char*,scalar_t__,...) ;
 int dev_info (int *,char*,...) ;
 int qlcnic_83xx_get_mbx_data (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 scalar_t__ qlcnic_83xx_mac_rcode (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_mbx_poll (struct qlcnic_adapter*,scalar_t__*) ;
 int qlcnic_dump_mbx (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 scalar_t__ readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;
 int writel (scalar_t__,int ) ;

int qlcnic_83xx_mbx_op(struct qlcnic_adapter *adapter,
         struct qlcnic_cmd_args *cmd)
{
 int i;
 u16 opcode;
 u8 mbx_err_code;
 unsigned long flags;
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 u32 rsp, mbx_val, fw_data, rsp_num, mbx_cmd, wait_time = 0;

 opcode = LSW(cmd->req.arg[0]);
 if (!test_bit(QLC_83XX_MBX_READY, &adapter->ahw->idc.status)) {
  dev_info(&adapter->pdev->dev,
    "Mailbox cmd attempted, 0x%x\n", opcode);
  dev_info(&adapter->pdev->dev, "Mailbox detached\n");
  return 0;
 }

 spin_lock_irqsave(&adapter->ahw->mbx_lock, flags);
 mbx_val = QLCRDX(ahw, QLCNIC_HOST_MBX_CTRL);

 if (mbx_val) {
  QLCDB(adapter, DRV,
        "Mailbox cmd attempted, 0x%x\n", opcode);
  QLCDB(adapter, DRV,
        "Mailbox not available, 0x%x, collect FW dump\n",
        mbx_val);
  cmd->rsp.arg[0] = QLCNIC_RCODE_TIMEOUT;
  spin_unlock_irqrestore(&adapter->ahw->mbx_lock, flags);
  return cmd->rsp.arg[0];
 }


 mbx_cmd = cmd->req.arg[0];
 writel(mbx_cmd, QLCNIC_MBX_HOST(ahw, 0));
 for (i = 1; i < cmd->req.num; i++)
  writel(cmd->req.arg[i], QLCNIC_MBX_HOST(ahw, i));


 QLCWRX(ahw, QLCNIC_HOST_MBX_CTRL, QLCNIC_SET_OWNER);
poll:
 rsp = qlcnic_83xx_mbx_poll(adapter, &wait_time);
 if (rsp != QLCNIC_RCODE_TIMEOUT) {

  fw_data = readl(QLCNIC_MBX_FW(ahw, 0));
  if (fw_data & QLCNIC_MBX_ASYNC_EVENT) {
   __qlcnic_83xx_process_aen(adapter);
   goto poll;
  }
  mbx_err_code = QLCNIC_MBX_STATUS(fw_data);
  rsp_num = QLCNIC_MBX_NUM_REGS(fw_data);
  opcode = QLCNIC_MBX_RSP(fw_data);
  qlcnic_83xx_get_mbx_data(adapter, cmd);

  switch (mbx_err_code) {
  case 128:
  case 129:
   rsp = QLCNIC_RCODE_SUCCESS;
   break;
  default:
   if (opcode == QLCNIC_CMD_CONFIG_MAC_VLAN) {
    rsp = qlcnic_83xx_mac_rcode(adapter);
    if (!rsp)
     goto out;
   }
   dev_err(&adapter->pdev->dev,
    "MBX command 0x%x failed with err:0x%x\n",
    opcode, mbx_err_code);
   rsp = mbx_err_code;
   qlcnic_dump_mbx(adapter, cmd);
   break;
  }
  goto out;
 }

 dev_err(&adapter->pdev->dev, "MBX command 0x%x timed out\n",
  QLCNIC_MBX_RSP(mbx_cmd));
 rsp = QLCNIC_RCODE_TIMEOUT;
out:

 QLCWRX(ahw, QLCNIC_FW_MBX_CTRL, QLCNIC_CLR_OWNER);
 spin_unlock_irqrestore(&adapter->ahw->mbx_lock, flags);
 return rsp;
}
