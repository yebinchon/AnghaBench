
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_7__ {int* arg; } ;
struct TYPE_5__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_3__ rsp; TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_4__* pdev; TYPE_2__* ahw; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {int pci_func; } ;


 int BIT_8 ;
 int EIO ;
 int QLCNIC_CMD_MAC_ADDRESS ;
 int QLCNIC_RCODE_SUCCESS ;
 int dev_err (int *,char*,int) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

int qlcnic_82xx_get_mac_address(struct qlcnic_adapter *adapter, u8 *mac)
{
 int err, i;
 struct qlcnic_cmd_args cmd;
 u32 mac_low, mac_high;

 qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_MAC_ADDRESS);
 cmd.req.arg[1] = adapter->ahw->pci_func | BIT_8;
 err = qlcnic_issue_cmd(adapter, &cmd);

 if (err == QLCNIC_RCODE_SUCCESS) {
  mac_low = cmd.rsp.arg[1];
  mac_high = cmd.rsp.arg[2];

  for (i = 0; i < 2; i++)
   mac[i] = (u8) (mac_high >> ((1 - i) * 8));
  for (i = 2; i < 6; i++)
   mac[i] = (u8) (mac_low >> ((5 - i) * 8));
 } else {
  dev_err(&adapter->pdev->dev,
   "Failed to get mac address%d\n", err);
  err = -EIO;
 }
 qlcnic_free_mbx_args(&cmd);
 return err;
}
