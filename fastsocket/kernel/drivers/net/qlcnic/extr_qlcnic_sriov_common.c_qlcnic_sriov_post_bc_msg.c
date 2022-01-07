
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int status; } ;
struct qlcnic_hardware_context {int fw_hal_version; int mbx_lock; TYPE_1__ idc; } ;
struct qlcnic_bc_hdr {int cmd_op; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int DRV ;
 int QLCDB (struct qlcnic_adapter*,int ,char*,int ) ;
 int QLCNIC_CLR_OWNER ;
 int QLCNIC_CMD_CONFIG_MAC_VLAN ;
 int QLCNIC_FW_MBX_CTRL ;
 int QLCNIC_HOST_MBX_CTRL ;
 int QLCNIC_MBX_ASYNC_EVENT ;
 int QLCNIC_MBX_FW (struct qlcnic_hardware_context*,int ) ;
 int QLCNIC_MBX_HOST (struct qlcnic_hardware_context*,int) ;
 int QLCNIC_MBX_NUM_REGS (int) ;

 int QLCNIC_MBX_RSP (int) ;

 int QLCNIC_MBX_STATUS (int) ;
 int QLCNIC_RCODE_SUCCESS ;
 int QLCNIC_RCODE_TIMEOUT ;
 int QLCNIC_SET_OWNER ;
 int QLCRDX (struct qlcnic_hardware_context*,int ) ;
 int QLCWRX (struct qlcnic_hardware_context*,int ,int ) ;
 int QLC_83XX_MBX_READY ;
 int __qlcnic_83xx_process_aen (struct qlcnic_adapter*) ;
 int dev_err (int *,char*,int ,...) ;
 int dev_info (int *,char*,...) ;
 int qlcnic_83xx_mac_rcode (struct qlcnic_adapter*) ;
 int qlcnic_83xx_mbx_poll (struct qlcnic_adapter*,int*) ;
 scalar_t__ qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;
 int writel (int,int ) ;

__attribute__((used)) static int qlcnic_sriov_post_bc_msg(struct qlcnic_adapter *adapter, u32 *hdr,
        u32 *pay, u8 pci_func, u8 size)
{
 u32 rsp, mbx_val, fw_data, rsp_num, mbx_cmd, val, wait_time = 0;
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 unsigned long flags;
 u16 opcode;
 u8 mbx_err_code;
 int i, j;

 opcode = ((struct qlcnic_bc_hdr *)hdr)->cmd_op;

 if (!test_bit(QLC_83XX_MBX_READY, &adapter->ahw->idc.status)) {
  dev_info(&adapter->pdev->dev,
    "Mailbox cmd attempted, 0x%x\n", opcode);
  dev_info(&adapter->pdev->dev, "Mailbox detached\n");
  return 0;
 }

 spin_lock_irqsave(&ahw->mbx_lock, flags);

 mbx_val = QLCRDX(ahw, QLCNIC_HOST_MBX_CTRL);
 if (mbx_val) {
  QLCDB(adapter, DRV, "Mailbox cmd attempted, 0x%x\n", opcode);
  spin_unlock_irqrestore(&ahw->mbx_lock, flags);
  return QLCNIC_RCODE_TIMEOUT;
 }

 val = size + (sizeof(struct qlcnic_bc_hdr) / sizeof(u32));
 mbx_cmd = 0x31 | (val << 16) | (adapter->ahw->fw_hal_version << 29);

 writel(mbx_cmd, QLCNIC_MBX_HOST(ahw, 0));
 mbx_cmd = 0x1 | (1 << 4);

 if (qlcnic_sriov_pf_check(adapter))
  mbx_cmd |= (pci_func << 5);

 writel(mbx_cmd, QLCNIC_MBX_HOST(ahw, 1));
 for (i = 2, j = 0; j < (sizeof(struct qlcnic_bc_hdr) / sizeof(u32));
   i++, j++) {
  writel(*(hdr++), QLCNIC_MBX_HOST(ahw, i));
 }
 for (j = 0; j < size; j++, i++)
  writel(*(pay++), QLCNIC_MBX_HOST(ahw, i));


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
