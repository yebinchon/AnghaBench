
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx4_net_trans_rule_hw_ctrl {int flags; int qpn; int port; int prio; int type; } ;
struct mlx4_net_trans_rule {scalar_t__ queue_mode; size_t promisc_mode; int qpn; int port; int priority; scalar_t__ allow_loopback; scalar_t__ exclusive; } ;


 scalar_t__ MLX4_NET_TRANS_Q_LIFO ;
 int * __promisc_mode ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static void trans_rule_ctrl_to_hw(struct mlx4_net_trans_rule *ctrl,
      struct mlx4_net_trans_rule_hw_ctrl *hw)
{
 u8 flags = 0;

 flags = ctrl->queue_mode == MLX4_NET_TRANS_Q_LIFO ? 1 : 0;
 flags |= ctrl->exclusive ? (1 << 2) : 0;
 flags |= ctrl->allow_loopback ? (1 << 3) : 0;

 hw->flags = flags;
 hw->type = __promisc_mode[ctrl->promisc_mode];
 hw->prio = cpu_to_be16(ctrl->priority);
 hw->port = ctrl->port;
 hw->qpn = cpu_to_be32(ctrl->qpn);
}
