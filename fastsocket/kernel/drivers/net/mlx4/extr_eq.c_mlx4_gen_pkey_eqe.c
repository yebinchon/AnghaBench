
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct mlx4_slave_state {int active; } ;
struct TYPE_7__ {struct mlx4_slave_state* slave_state; } ;
struct TYPE_8__ {TYPE_3__ master; } ;
struct mlx4_priv {TYPE_4__ mfunc; } ;
struct TYPE_5__ {int port; } ;
struct TYPE_6__ {TYPE_1__ port_mgmt_change; } ;
struct mlx4_eqe {TYPE_2__ event; int subtype; int type; } ;
struct mlx4_dev {int dummy; } ;


 int MLX4_DEV_PMC_SUBTYPE_PKEY_TABLE ;
 int MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT ;
 int memset (struct mlx4_eqe*,int ,int) ;
 int mlx4_GEN_EQE (struct mlx4_dev*,int,struct mlx4_eqe*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

int mlx4_gen_pkey_eqe(struct mlx4_dev *dev, int slave, u8 port)
{
 struct mlx4_eqe eqe;

 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_slave_state *s_slave = &priv->mfunc.master.slave_state[slave];

 if (!s_slave->active)
  return 0;

 memset(&eqe, 0, sizeof eqe);

 eqe.type = MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT;
 eqe.subtype = MLX4_DEV_PMC_SUBTYPE_PKEY_TABLE;
 eqe.event.port_mgmt_change.port = port;

 return mlx4_GEN_EQE(dev, slave, &eqe);
}
