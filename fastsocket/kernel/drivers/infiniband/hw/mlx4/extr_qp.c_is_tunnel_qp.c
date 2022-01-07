
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ qpn; } ;
struct mlx4_ib_qp {TYPE_1__ mqp; } ;
struct mlx4_ib_dev {TYPE_3__* dev; } ;
struct TYPE_5__ {scalar_t__ base_tunnel_sqpn; } ;
struct TYPE_6__ {TYPE_2__ phys_caps; } ;


 int MLX4_MFUNC_MAX ;
 int mlx4_is_master (TYPE_3__*) ;

__attribute__((used)) static int is_tunnel_qp(struct mlx4_ib_dev *dev, struct mlx4_ib_qp *qp)
{
 if (!mlx4_is_master(dev->dev))
  return 0;

 return qp->mqp.qpn >= dev->dev->phys_caps.base_tunnel_sqpn &&
        qp->mqp.qpn < dev->dev->phys_caps.base_tunnel_sqpn +
  8 * MLX4_MFUNC_MAX;
}
