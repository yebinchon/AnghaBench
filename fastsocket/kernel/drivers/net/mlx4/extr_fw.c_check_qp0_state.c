
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* qp0_state; } ;
struct TYPE_6__ {TYPE_2__ master; } ;
struct mlx4_priv {TYPE_3__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ qp0_active; scalar_t__ proxy_qp0_active; } ;


 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

__attribute__((used)) static int check_qp0_state(struct mlx4_dev *dev, int function, int port)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 if (priv->mfunc.master.qp0_state[port].proxy_qp0_active &&
     priv->mfunc.master.qp0_state[port].qp0_active)
  return 1;
 return 0;
}
