
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; } ;


 int MLX4_CMD_DUMP_ETH_STATS ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_B ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int ,int ,int ,int ,int ) ;

int mlx4_common_dump_eth_stats(struct mlx4_dev *dev, int slave,
          u32 in_mod, struct mlx4_cmd_mailbox *outbox)
{
 return mlx4_cmd_box(dev, 0, outbox->dma, in_mod, 0,
       MLX4_CMD_DUMP_ETH_STATS, MLX4_CMD_TIME_CLASS_B,
       MLX4_CMD_NATIVE);
}
