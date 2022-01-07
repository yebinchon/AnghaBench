
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct qlcnic_vf_info {int rx_ctx_id; } ;
struct qlcnic_nic_intr_coalesce {int rx_packets; int rx_time_us; } ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {struct qlcnic_nic_intr_coalesce coal; } ;


 int EINVAL ;

__attribute__((used)) static int qlcnic_sriov_validate_cfg_intrcoal(struct qlcnic_adapter *adapter,
           struct qlcnic_vf_info *vf,
           struct qlcnic_cmd_args *cmd)
{
 struct qlcnic_nic_intr_coalesce *coal = &adapter->ahw->coal;
 u16 ctx_id, pkts, time;

 ctx_id = cmd->req.arg[1] >> 16;
 pkts = cmd->req.arg[2] & 0xffff;
 time = cmd->req.arg[2] >> 16;

 if (ctx_id != vf->rx_ctx_id)
  return -EINVAL;
 if (pkts > coal->rx_packets)
  return -EINVAL;
 if (time < coal->rx_time_us)
  return -EINVAL;

 return 0;
}
