
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ rsp; } ;
struct qlcnic_adapter {int rx_pvid; int flags; } ;


 int QLCNIC_TAGGING_ENABLED ;

__attribute__((used)) static int qlcnic_sriov_set_pvid_mode(struct qlcnic_adapter *adapter,
          struct qlcnic_cmd_args *cmd)
{
 adapter->rx_pvid = (cmd->rsp.arg[1] >> 16) & 0xffff;
 adapter->flags &= ~QLCNIC_TAGGING_ENABLED;
 return 0;
}
