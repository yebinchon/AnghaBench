
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mlx4_en_query_port_context {int link_up; int link_speed; int transceiver; } ;
struct mlx4_en_port_state {int link_state; int link_speed; int transciver; } ;
struct mlx4_en_priv {struct mlx4_en_port_state port_state; } ;
struct mlx4_en_dev {int dev; int * pndev; } ;
struct mlx4_cmd_mailbox {struct mlx4_en_query_port_context* buf; int dma; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_QUERY_PORT ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_WRAPPED ;




 int MLX4_EN_LINK_UP_MASK ;
 int MLX4_EN_SPEED_MASK ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int memset (struct mlx4_en_query_port_context*,int ,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (int ) ;
 int mlx4_cmd_box (int ,int ,int ,size_t,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (int ,struct mlx4_cmd_mailbox*) ;
 struct mlx4_en_priv* netdev_priv (int ) ;

int mlx4_en_QUERY_PORT(struct mlx4_en_dev *mdev, u8 port)
{
 struct mlx4_en_query_port_context *qport_context;
 struct mlx4_en_priv *priv = netdev_priv(mdev->pndev[port]);
 struct mlx4_en_port_state *state = &priv->port_state;
 struct mlx4_cmd_mailbox *mailbox;
 int err;

 mailbox = mlx4_alloc_cmd_mailbox(mdev->dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 memset(mailbox->buf, 0, sizeof(*qport_context));
 err = mlx4_cmd_box(mdev->dev, 0, mailbox->dma, port, 0,
      MLX4_CMD_QUERY_PORT, MLX4_CMD_TIME_CLASS_B,
      MLX4_CMD_WRAPPED);
 if (err)
  goto out;
 qport_context = mailbox->buf;



 state->link_state = !!(qport_context->link_up & MLX4_EN_LINK_UP_MASK);
 switch (qport_context->link_speed & MLX4_EN_SPEED_MASK) {
 case 129:
  state->link_speed = 1000;
  break;
 case 131:
 case 130:
  state->link_speed = 10000;
  break;
 case 128:
  state->link_speed = 40000;
  break;
 default:
  state->link_speed = -1;
  break;
 }
 state->transciver = qport_context->transceiver;

out:
 mlx4_free_cmd_mailbox(mdev->dev, mailbox);
 return err;
}
