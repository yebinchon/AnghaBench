
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_sense {int* do_sense_port; int sense_poll; struct mlx4_dev* dev; } ;
struct mlx4_priv {struct mlx4_sense sense; } ;
struct TYPE_2__ {int num_ports; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int INIT_DELAYED_WORK_DEFERRABLE (int *,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_sense_port ;

void mlx4_sense_init(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_sense *sense = &priv->sense;
 int port;

 sense->dev = dev;
 for (port = 1; port <= dev->caps.num_ports; port++)
  sense->do_sense_port[port] = 1;

 INIT_DELAYED_WORK_DEFERRABLE(&sense->sense_poll, mlx4_sense_port);
}
