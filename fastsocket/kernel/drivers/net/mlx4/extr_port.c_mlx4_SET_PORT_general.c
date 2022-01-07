
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx4_set_port_general_context {int pptx; int pfctx; int pprx; int pfcrx; int mtu; int flags; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; struct mlx4_set_port_general_context* buf; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_SET_PORT ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_WRAPPED ;
 int MLX4_SET_PORT_GENERAL ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int SET_PORT_GEN_ALL_VALID ;
 int cpu_to_be16 (int) ;
 int memset (struct mlx4_set_port_general_context*,int ,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,int,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

int mlx4_SET_PORT_general(struct mlx4_dev *dev, u8 port, int mtu,
     u8 pptx, u8 pfctx, u8 pprx, u8 pfcrx)
{
 struct mlx4_cmd_mailbox *mailbox;
 struct mlx4_set_port_general_context *context;
 int err;
 u32 in_mod;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 context = mailbox->buf;
 memset(context, 0, sizeof *context);

 context->flags = SET_PORT_GEN_ALL_VALID;
 context->mtu = cpu_to_be16(mtu);
 context->pptx = (pptx * (!pfctx)) << 7;
 context->pfctx = pfctx;
 context->pprx = (pprx * (!pfcrx)) << 7;
 context->pfcrx = pfcrx;

 in_mod = MLX4_SET_PORT_GENERAL << 8 | port;
 err = mlx4_cmd(dev, mailbox->dma, in_mod, 1, MLX4_CMD_SET_PORT,
         MLX4_CMD_TIME_CLASS_B, MLX4_CMD_WRAPPED);

 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
