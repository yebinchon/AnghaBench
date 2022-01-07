
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_vhcr {int in_modifier; } ;
struct TYPE_2__ {int function; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;


 int mlx4_common_dump_eth_stats (struct mlx4_dev*,int,int ,struct mlx4_cmd_mailbox*) ;

int mlx4_DUMP_ETH_STATS_wrapper(struct mlx4_dev *dev, int slave,
    struct mlx4_vhcr *vhcr,
    struct mlx4_cmd_mailbox *inbox,
    struct mlx4_cmd_mailbox *outbox,
    struct mlx4_cmd_info *cmd)
{
 if (slave != dev->caps.function)
  return 0;
 return mlx4_common_dump_eth_stats(dev, slave,
       vhcr->in_modifier, outbox);
}
