
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_host_tx_ring {int ctx_id; } ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int QLCNIC_CMD_DESTROY_TX_CTX ;
 int dev_err (int *,char*) ;
 scalar_t__ qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 scalar_t__ qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int qlcnic_pf_set_interface_id_del_tx_ctx (struct qlcnic_adapter*,int*) ;
 scalar_t__ qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_sriov_vf_check (struct qlcnic_adapter*) ;

void qlcnic_83xx_del_tx_ctx(struct qlcnic_adapter *adapter,
       struct qlcnic_host_tx_ring *tx_ring)
{
 struct qlcnic_cmd_args cmd;
 u32 temp = 0;

 if (qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_DESTROY_TX_CTX))
  return;

 if (qlcnic_sriov_pf_check(adapter) || qlcnic_sriov_vf_check(adapter))
  cmd.req.arg[0] |= (0x3 << 29);

 if (qlcnic_sriov_pf_check(adapter))
  qlcnic_pf_set_interface_id_del_tx_ctx(adapter, &temp);

 cmd.req.arg[1] = tx_ring->ctx_id | temp;
 if (qlcnic_issue_cmd(adapter, &cmd))
  dev_err(&adapter->pdev->dev,
   "Failed to destroy tx ctx in firmware\n");
 qlcnic_free_mbx_args(&cmd);
}
