
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_hardware_context {scalar_t__ diag_cnt; int pci_func; } ;
struct TYPE_2__ {int * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {int max_sds_rings; int state; struct qlcnic_hardware_context* ahw; } ;
struct net_device {int dummy; } ;


 int EIO ;
 int QLCNIC_CMD_INTRPT_TEST ;
 int QLCNIC_INTERRUPT_TEST ;
 int __QLCNIC_RESETTING ;
 int clear_bit (int ,int *) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_interrupt_test (struct net_device*) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_diag_alloc_res (struct net_device*,int ) ;
 int qlcnic_diag_free_res (struct net_device*,int) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int qlcnic_irq_test(struct net_device *netdev)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 int ret, max_sds_rings = adapter->max_sds_rings;
 struct qlcnic_cmd_args cmd;

 if (qlcnic_83xx_check(adapter))
  return qlcnic_83xx_interrupt_test(netdev);

 if (test_and_set_bit(__QLCNIC_RESETTING, &adapter->state))
  return -EIO;

 ret = qlcnic_diag_alloc_res(netdev, QLCNIC_INTERRUPT_TEST);
 if (ret)
  goto clear_diag_irq;

 ahw->diag_cnt = 0;
 qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_INTRPT_TEST);
 cmd.req.arg[1] = adapter->ahw->pci_func;

 ret = qlcnic_issue_cmd(adapter, &cmd);
 if (ret)
  goto done;

 usleep_range(1000, 12000);
 ret = !ahw->diag_cnt;

done:
 qlcnic_free_mbx_args(&cmd);
 qlcnic_diag_free_res(netdev, max_sds_rings);

clear_diag_irq:
 adapter->max_sds_rings = max_sds_rings;
 clear_bit(__QLCNIC_RESETTING, &adapter->state);
 return ret;
}
