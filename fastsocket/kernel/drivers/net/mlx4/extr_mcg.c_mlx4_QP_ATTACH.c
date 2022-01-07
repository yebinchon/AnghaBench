
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlx4_qp {int qpn; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; int buf; } ;
typedef enum mlx4_protocol { ____Placeholder_mlx4_protocol } mlx4_protocol ;


 int EBADF ;
 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_QP_ATTACH ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int memcpy (int ,scalar_t__*,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,scalar_t__,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 int mlx4_is_mfunc (struct mlx4_dev*) ;

__attribute__((used)) static int mlx4_QP_ATTACH(struct mlx4_dev *dev, struct mlx4_qp *qp,
     u8 gid[16], u8 attach, u8 block_loopback,
     enum mlx4_protocol prot)
{
 struct mlx4_cmd_mailbox *mailbox;
 int err = 0;
 int qpn;

 if (!mlx4_is_mfunc(dev))
  return -EBADF;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 memcpy(mailbox->buf, gid, 16);
 qpn = qp->qpn;
 qpn |= (prot << 28);
 if (attach && block_loopback)
  qpn |= (1 << 31);

 err = mlx4_cmd(dev, mailbox->dma, qpn, attach,
         MLX4_CMD_QP_ATTACH, MLX4_CMD_TIME_CLASS_A,
         MLX4_CMD_WRAPPED);

 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
