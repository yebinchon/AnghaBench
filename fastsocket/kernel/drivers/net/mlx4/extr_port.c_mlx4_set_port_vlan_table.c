
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; int buf; } ;
typedef int __be32 ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_SET_PORT ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_WRAPPED ;
 int MLX4_SET_PORT_VLAN_TABLE ;
 int MLX4_VLAN_TABLE_SIZE ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int memcpy (int ,int *,int ) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,int,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

__attribute__((used)) static int mlx4_set_port_vlan_table(struct mlx4_dev *dev, u8 port,
        __be32 *entries)
{
 struct mlx4_cmd_mailbox *mailbox;
 u32 in_mod;
 int err;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 memcpy(mailbox->buf, entries, MLX4_VLAN_TABLE_SIZE);
 in_mod = MLX4_SET_PORT_VLAN_TABLE << 8 | port;
 err = mlx4_cmd(dev, mailbox->dma, in_mod, 1, MLX4_CMD_SET_PORT,
         MLX4_CMD_TIME_CLASS_B, MLX4_CMD_WRAPPED);

 mlx4_free_cmd_mailbox(dev, mailbox);

 return err;
}
