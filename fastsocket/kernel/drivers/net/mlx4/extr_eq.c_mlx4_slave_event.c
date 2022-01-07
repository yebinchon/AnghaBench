
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_slave_state {int active; } ;
struct TYPE_3__ {struct mlx4_slave_state* slave_state; } ;
struct TYPE_4__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct mlx4_eqe {int dummy; } ;
struct mlx4_dev {int dummy; } ;


 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int slave_event (struct mlx4_dev*,int,struct mlx4_eqe*) ;

__attribute__((used)) static void mlx4_slave_event(struct mlx4_dev *dev, int slave,
        struct mlx4_eqe *eqe)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_slave_state *s_slave =
  &priv->mfunc.master.slave_state[slave];

 if (!s_slave->active) {

  return;
 }

 slave_event(dev, slave, eqe);
}
