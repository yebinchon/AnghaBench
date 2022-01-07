
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_vhcr {int op_modifier; int in_modifier; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;


 int mlx4_common_set_port (struct mlx4_dev*,int,int ,int ,struct mlx4_cmd_mailbox*) ;

int mlx4_SET_PORT_wrapper(struct mlx4_dev *dev, int slave,
     struct mlx4_vhcr *vhcr,
     struct mlx4_cmd_mailbox *inbox,
     struct mlx4_cmd_mailbox *outbox,
     struct mlx4_cmd_info *cmd)
{
 return mlx4_common_set_port(dev, slave, vhcr->in_modifier,
        vhcr->op_modifier, inbox);
}
