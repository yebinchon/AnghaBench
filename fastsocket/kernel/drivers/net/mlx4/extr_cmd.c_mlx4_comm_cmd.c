
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mlx4_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ use_events; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;


 int mlx4_comm_cmd_poll (struct mlx4_dev*,int ,int ,unsigned long) ;
 int mlx4_comm_cmd_wait (struct mlx4_dev*,int ,int ,unsigned long) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;

int mlx4_comm_cmd(struct mlx4_dev *dev, u8 cmd, u16 param,
    unsigned long timeout)
{
 if (mlx4_priv(dev)->cmd.use_events)
  return mlx4_comm_cmd_wait(dev, cmd, param, timeout);
 return mlx4_comm_cmd_poll(dev, cmd, param, timeout);
}
