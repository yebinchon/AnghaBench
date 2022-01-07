
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx4_vhcr {int op_modifier; int in_modifier; } ;
struct TYPE_4__ {int num_ports; int function_caps; int num_qps; int num_srqs; int num_cqs; int num_eqs; int reserved_eqs; int num_mpts; int num_mtts; int num_mgms; int num_amgms; } ;
struct TYPE_3__ {int base_tunnel_sqpn; int base_proxy_sqpn; } ;
struct mlx4_dev {TYPE_2__ caps; TYPE_1__ phys_caps; } ;
struct mlx4_cmd_mailbox {int buf; } ;
struct mlx4_cmd_info {int dummy; } ;


 int EINVAL ;
 int MLX4_PUT (int ,int,int ) ;
 int QUERY_FUNC_CAP_CQ_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_ETH_PROPS_OFFSET ;
 int QUERY_FUNC_CAP_FLAGS_OFFSET ;
 int QUERY_FUNC_CAP_FLAG_ETH ;
 int QUERY_FUNC_CAP_FLAG_RDMA ;
 int QUERY_FUNC_CAP_FMR_OFFSET ;
 int QUERY_FUNC_CAP_MAX_EQ_OFFSET ;
 int QUERY_FUNC_CAP_MCG_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_MPT_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_MTT_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_NUM_PORTS_OFFSET ;
 int QUERY_FUNC_CAP_PF_BHVR_OFFSET ;
 int QUERY_FUNC_CAP_PHYS_PORT_OFFSET ;
 int QUERY_FUNC_CAP_QP0_PROXY ;
 int QUERY_FUNC_CAP_QP0_TUNNEL ;
 int QUERY_FUNC_CAP_QP1_PROXY ;
 int QUERY_FUNC_CAP_QP1_TUNNEL ;
 int QUERY_FUNC_CAP_QP_QUOTA_OFFSET ;
 int QUERY_FUNC_CAP_RDMA_PROPS_OFFSET ;
 int QUERY_FUNC_CAP_RESERVED_EQ_OFFSET ;
 int QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET ;

int mlx4_QUERY_FUNC_CAP_wrapper(struct mlx4_dev *dev, int slave,
    struct mlx4_vhcr *vhcr,
    struct mlx4_cmd_mailbox *inbox,
    struct mlx4_cmd_mailbox *outbox,
    struct mlx4_cmd_info *cmd)
{
 u8 field;
 u32 size;
 int err = 0;
 if (vhcr->op_modifier == 1) {
  field = 0;

  MLX4_PUT(outbox->buf, field, 0xc);

  MLX4_PUT(outbox->buf, field, 0x8);

  field = vhcr->in_modifier;
  MLX4_PUT(outbox->buf, field, 0x3);


  size = dev->phys_caps.base_tunnel_sqpn + 8 * slave + field - 1;
  MLX4_PUT(outbox->buf, size, 0x10);

  size += 2;
  MLX4_PUT(outbox->buf, size, 0x18);

  size = dev->phys_caps.base_proxy_sqpn + 8 * slave + field - 1;
  MLX4_PUT(outbox->buf, size, 0x14);

  size += 2;
  MLX4_PUT(outbox->buf, size, 0x1c);

 } else if (vhcr->op_modifier == 0) {

  field = (0x80 | 0x40);
  MLX4_PUT(outbox->buf, field, 0x0);

  field = dev->caps.num_ports;
  MLX4_PUT(outbox->buf, field, 0x1);

  size = dev->caps.function_caps;
  MLX4_PUT(outbox->buf, size, 0x4);

  field = 0;
  MLX4_PUT(outbox->buf, field, 0x8);

  size = dev->caps.num_qps;
  MLX4_PUT(outbox->buf, size, 0x10);

  size = dev->caps.num_srqs;
  MLX4_PUT(outbox->buf, size, 0x18);

  size = dev->caps.num_cqs;
  MLX4_PUT(outbox->buf, size, 0x14);

  size = dev->caps.num_eqs;
  MLX4_PUT(outbox->buf, size, 0x2c);

  size = dev->caps.reserved_eqs;
  MLX4_PUT(outbox->buf, size, 0x30);

  size = dev->caps.num_mpts;
  MLX4_PUT(outbox->buf, size, 0x20);

  size = dev->caps.num_mtts;
  MLX4_PUT(outbox->buf, size, 0x24);

  size = dev->caps.num_mgms + dev->caps.num_amgms;
  MLX4_PUT(outbox->buf, size, 0x28);

 } else
  err = -EINVAL;

 return err;
}
