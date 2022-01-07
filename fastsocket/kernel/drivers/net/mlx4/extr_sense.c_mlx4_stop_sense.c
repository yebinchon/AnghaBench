
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_dev {int dummy; } ;
struct TYPE_3__ {int sense_poll; } ;
struct TYPE_4__ {TYPE_1__ sense; } ;


 int cancel_delayed_work_sync (int *) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;

void mlx4_stop_sense(struct mlx4_dev *dev)
{
 cancel_delayed_work_sync(&mlx4_priv(dev)->sense.sense_poll);
}
