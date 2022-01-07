
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_vhcr {int dummy; } ;
struct mlx4_qp_context {int dummy; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {struct mlx4_qp_context* buf; } ;
struct mlx4_cmd_info {int dummy; } ;


 int adjust_proxy_tun_qkey (struct mlx4_dev*,struct mlx4_vhcr*,struct mlx4_qp_context*) ;
 int mlx4_GEN_QP_wrapper (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ;

int mlx4_SQERR2RTS_QP_wrapper(struct mlx4_dev *dev, int slave,
         struct mlx4_vhcr *vhcr,
         struct mlx4_cmd_mailbox *inbox,
         struct mlx4_cmd_mailbox *outbox,
         struct mlx4_cmd_info *cmd)
{
 struct mlx4_qp_context *context = inbox->buf + 8;
 adjust_proxy_tun_qkey(dev, vhcr, context);
 return mlx4_GEN_QP_wrapper(dev, slave, vhcr, inbox, outbox, cmd);
}
