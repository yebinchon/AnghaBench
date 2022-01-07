
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qlcnic_hardware_context {int module_type; int supported_type; int link_speed; scalar_t__ pci_base0; int pci_func; } ;
struct TYPE_4__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ rsp; } ;
struct qlcnic_adapter {TYPE_1__* pdev; int portnum; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_3__ {int dev; } ;
 int PORT_FIBRE ;
 int PORT_OTHER ;
 int PORT_TP ;
 int QLCNIC_CMD_GET_LINK_STATUS ;




 int QLC_83XX_CURRENT_LINK_SPEED (int) ;
 scalar_t__ QLC_83XX_LINK_STATE (int ) ;
 scalar_t__ QLC_83XX_SFP_PRESENT (int) ;
 int QLC_83xx_FUNC_VAL (int,int ) ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int dev_info (int *,char*,...) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 scalar_t__ qlcnic_sriov_vf_check (struct qlcnic_adapter*) ;
 int readl (scalar_t__) ;

int qlcnic_83xx_test_link(struct qlcnic_adapter *adapter)
{
 u8 pci_func;
 int err;
 u32 config = 0, state;
 struct qlcnic_cmd_args cmd;
 struct qlcnic_hardware_context *ahw = adapter->ahw;

 if (qlcnic_sriov_vf_check(adapter))
  pci_func = adapter->portnum;
 else
  pci_func = ahw->pci_func;

 state = readl(ahw->pci_base0 + QLC_83XX_LINK_STATE(pci_func));
 if (!QLC_83xx_FUNC_VAL(state, pci_func)) {
  dev_info(&adapter->pdev->dev, "link state down\n");
  return config;
 }
 qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_GET_LINK_STATUS);
 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err) {
  dev_info(&adapter->pdev->dev,
    "Get Link Status Command failed: 0x%x\n", err);
  goto out;
 } else {
  config = cmd.rsp.arg[1];
  switch (QLC_83XX_CURRENT_LINK_SPEED(config)) {
  case 129:
   ahw->link_speed = SPEED_10;
   break;
  case 131:
   ahw->link_speed = SPEED_100;
   break;
  case 128:
   ahw->link_speed = SPEED_1000;
   break;
  case 130:
   ahw->link_speed = SPEED_10000;
   break;
  default:
   ahw->link_speed = 0;
   break;
  }
  config = cmd.rsp.arg[3];
  if (QLC_83XX_SFP_PRESENT(config)) {
   switch (ahw->module_type) {
   case 135:
   case 136:
   case 138:
   case 137:
    ahw->supported_type = PORT_FIBRE;
    break;
   case 133:
   case 132:
   case 134:
    ahw->supported_type = PORT_TP;
    break;
   default:
    ahw->supported_type = PORT_OTHER;
   }
  }
  if (config & 1)
   err = 1;
 }
out:
 qlcnic_free_mbx_args(&cmd);
 return config;
}
