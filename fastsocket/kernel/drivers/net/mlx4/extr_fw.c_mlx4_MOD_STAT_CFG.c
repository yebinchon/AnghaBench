
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_mod_stat_cfg {int log_pg_sz_m; int log_pg_sz; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; int * buf; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_MOD_STAT_CFG ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_PUT (int *,int ,int ) ;
 int MOD_STAT_CFG_IN_SIZE ;
 int MOD_STAT_CFG_PG_SZ_M_OFFSET ;
 int MOD_STAT_CFG_PG_SZ_OFFSET ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int memset (int *,int ,int ) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

int mlx4_MOD_STAT_CFG(struct mlx4_dev *dev, struct mlx4_mod_stat_cfg *cfg)
{
 struct mlx4_cmd_mailbox *mailbox;
 u32 *inbox;
 int err = 0;






 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 inbox = mailbox->buf;

 memset(inbox, 0, 0x100);

 MLX4_PUT(inbox, cfg->log_pg_sz, 0x003);
 MLX4_PUT(inbox, cfg->log_pg_sz_m, 0x002);

 err = mlx4_cmd(dev, mailbox->dma, 0, 0, MLX4_CMD_MOD_STAT_CFG,
   MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);

 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
