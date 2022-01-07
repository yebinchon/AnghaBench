
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; } ;


 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_QP_FLOW_STEERING_ATTACH ;
 int mlx4_cmd_imm (struct mlx4_dev*,int ,int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int mlx4_QP_FLOW_STEERING_ATTACH(struct mlx4_dev *dev,
     struct mlx4_cmd_mailbox *mailbox,
     u32 size,
     u64 *reg_id)
{
 u64 imm;
 int err = 0;

 err = mlx4_cmd_imm(dev, mailbox->dma, &imm, size, 0,
      MLX4_QP_FLOW_STEERING_ATTACH, MLX4_CMD_TIME_CLASS_A,
      MLX4_CMD_NATIVE);
 if (err)
  return err;
 *reg_id = imm;

 return err;
}
