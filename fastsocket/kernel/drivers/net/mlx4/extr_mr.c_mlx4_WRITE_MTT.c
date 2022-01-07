
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; } ;


 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int MLX4_CMD_WRITE_MTT ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static int mlx4_WRITE_MTT(struct mlx4_dev *dev,
     struct mlx4_cmd_mailbox *mailbox,
     int num_entries)
{
 return mlx4_cmd(dev, mailbox->dma, num_entries, 0, MLX4_CMD_WRITE_MTT,
   MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);
}
