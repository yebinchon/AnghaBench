
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx4_set_port_rqp_calc_context {int vlan_miss; scalar_t__ intra_vlan_miss; int no_vlan; scalar_t__ intra_no_vlan; void* mcast; void* promisc; int n_mac; void* base_qpn; } ;
struct TYPE_2__ {int flags; scalar_t__ steering_mode; int log_num_macs; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int dma; struct mlx4_set_port_rqp_calc_context* buf; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MCAST_DEFAULT ;
 int MCAST_DIRECT ;
 int MLX4_CMD_SET_PORT ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_WRAPPED ;
 int MLX4_DEV_CAP_FLAG_VEP_MC_STEER ;
 int MLX4_NO_VLAN_IDX ;
 int MLX4_SET_PORT_RQP_CALC ;
 scalar_t__ MLX4_STEERING_MODE_A0 ;
 int MLX4_VLAN_MISS_IDX ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int SET_PORT_MC_PROMISC_SHIFT ;
 int SET_PORT_PROMISC_SHIFT ;
 void* cpu_to_be32 (int) ;
 int memset (struct mlx4_set_port_rqp_calc_context*,int ,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,int,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

int mlx4_SET_PORT_qpn_calc(struct mlx4_dev *dev, u8 port, u32 base_qpn,
      u8 promisc)
{
 struct mlx4_cmd_mailbox *mailbox;
 struct mlx4_set_port_rqp_calc_context *context;
 int err;
 u32 in_mod;
 u32 m_promisc = (dev->caps.flags & MLX4_DEV_CAP_FLAG_VEP_MC_STEER) ?
  MCAST_DIRECT : MCAST_DEFAULT;

 if (dev->caps.steering_mode != MLX4_STEERING_MODE_A0)
  return 0;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 context = mailbox->buf;
 memset(context, 0, sizeof *context);

 context->base_qpn = cpu_to_be32(base_qpn);
 context->n_mac = dev->caps.log_num_macs;
 context->promisc = cpu_to_be32(promisc << SET_PORT_PROMISC_SHIFT |
           base_qpn);
 context->mcast = cpu_to_be32(m_promisc << SET_PORT_MC_PROMISC_SHIFT |
         base_qpn);
 context->intra_no_vlan = 0;
 context->no_vlan = MLX4_NO_VLAN_IDX;
 context->intra_vlan_miss = 0;
 context->vlan_miss = MLX4_VLAN_MISS_IDX;

 in_mod = MLX4_SET_PORT_RQP_CALC << 8 | port;
 err = mlx4_cmd(dev, mailbox->dma, in_mod, 1, MLX4_CMD_SET_PORT,
         MLX4_CMD_TIME_CLASS_B, MLX4_CMD_WRAPPED);

 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
