
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_vport_oper_state {scalar_t__ vlan_idx; } ;
struct TYPE_5__ {TYPE_1__* vf_oper; } ;
struct TYPE_6__ {TYPE_2__ master; } ;
struct mlx4_priv {int dev; TYPE_3__ mfunc; } ;
struct TYPE_4__ {struct mlx4_vport_oper_state* vport; } ;


 int MLX4_MAX_PORTS ;
 scalar_t__ NO_INDX ;
 int __mlx4_unregister_vlan (int *,int,scalar_t__) ;

__attribute__((used)) static void mlx4_master_deactivate_admin_state(struct mlx4_priv *priv, int slave)
{
 int port;
 struct mlx4_vport_oper_state *vp_oper;

 for (port = 1; port <= MLX4_MAX_PORTS; port++) {
  vp_oper = &priv->mfunc.master.vf_oper[slave].vport[port];
  if (NO_INDX != vp_oper->vlan_idx) {
   __mlx4_unregister_vlan(&priv->dev,
            port, vp_oper->vlan_idx);
   vp_oper->vlan_idx = NO_INDX;
  }
 }
 return;
}
