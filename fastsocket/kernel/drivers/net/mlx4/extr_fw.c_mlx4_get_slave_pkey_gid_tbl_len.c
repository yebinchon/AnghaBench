
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int * buf; int dma; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_QUERY_PORT ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_WRAPPED ;
 int MLX4_GET (int,int *,int ) ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int QUERY_PORT_CUR_MAX_GID_OFFSET ;
 int QUERY_PORT_CUR_MAX_PKEY_OFFSET ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int ,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

int mlx4_get_slave_pkey_gid_tbl_len(struct mlx4_dev *dev, u8 port,
        int *gid_tbl_len, int *pkey_tbl_len)
{
 struct mlx4_cmd_mailbox *mailbox;
 u32 *outbox;
 u16 field;
 int err;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 err = mlx4_cmd_box(dev, 0, mailbox->dma, port, 0,
       MLX4_CMD_QUERY_PORT, MLX4_CMD_TIME_CLASS_B,
       MLX4_CMD_WRAPPED);
 if (err)
  goto out;

 outbox = mailbox->buf;

 MLX4_GET(field, outbox, QUERY_PORT_CUR_MAX_GID_OFFSET);
 *gid_tbl_len = field;

 MLX4_GET(field, outbox, QUERY_PORT_CUR_MAX_PKEY_OFFSET);
 *pkey_tbl_len = field;

out:
 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
