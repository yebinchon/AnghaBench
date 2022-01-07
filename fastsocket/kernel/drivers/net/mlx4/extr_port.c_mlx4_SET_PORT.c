
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {scalar_t__* port_type; int* port_ib_mtu; int * ib_port_def_cap; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int dma; scalar_t__ buf; } ;
typedef int __be32 ;
typedef int __be16 ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CHANGE_PORT_MTU_CAP ;
 int MLX4_CHANGE_PORT_PKEY_TBL_SZ ;
 int MLX4_CHANGE_PORT_VL_CAP ;
 int MLX4_CMD_SET_PORT ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_WRAPPED ;
 scalar_t__ MLX4_PORT_TYPE_ETH ;
 int MLX4_SET_PORT_MTU_CAP ;
 int MLX4_SET_PORT_VL_CAP ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int) ;
 int memset (scalar_t__,int ,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd (struct mlx4_dev*,int ,size_t,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 scalar_t__ mlx4_is_master (struct mlx4_dev*) ;

int mlx4_SET_PORT(struct mlx4_dev *dev, u8 port, int pkey_tbl_sz)
{
 struct mlx4_cmd_mailbox *mailbox;
 int err, vl_cap, pkey_tbl_flag = 0;

 if (dev->caps.port_type[port] == MLX4_PORT_TYPE_ETH)
  return 0;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 memset(mailbox->buf, 0, 256);

 ((__be32 *) mailbox->buf)[1] = dev->caps.ib_port_def_cap[port];

 if (pkey_tbl_sz >= 0 && mlx4_is_master(dev)) {
  pkey_tbl_flag = 1;
  ((__be16 *) mailbox->buf)[20] = cpu_to_be16(pkey_tbl_sz);
 }


 for (vl_cap = 8; vl_cap >= 1; vl_cap >>= 1) {
  ((__be32 *) mailbox->buf)[0] = cpu_to_be32(
   (1 << MLX4_CHANGE_PORT_MTU_CAP) |
   (1 << MLX4_CHANGE_PORT_VL_CAP) |
   (pkey_tbl_flag << MLX4_CHANGE_PORT_PKEY_TBL_SZ) |
   (dev->caps.port_ib_mtu[port] << MLX4_SET_PORT_MTU_CAP) |
   (vl_cap << MLX4_SET_PORT_VL_CAP));
  err = mlx4_cmd(dev, mailbox->dma, port, 0, MLX4_CMD_SET_PORT,
    MLX4_CMD_TIME_CLASS_B, MLX4_CMD_WRAPPED);
  if (err != -ENOMEM)
   break;
 }

 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
