
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ base_tunnel_sqpn; scalar_t__ base_proxy_sqpn; } ;
struct mlx4_dev {TYPE_1__ phys_caps; } ;


 int EINVAL ;
 int MLX4_MFUNC_MAX ;
 scalar_t__ MLX4_RESERVED_QKEY_BASE ;

int mlx4_get_parav_qkey(struct mlx4_dev *dev, u32 qpn, u32 *qkey)
{
 u32 qk = MLX4_RESERVED_QKEY_BASE;

 if (qpn >= dev->phys_caps.base_tunnel_sqpn + 8 * MLX4_MFUNC_MAX ||
     qpn < dev->phys_caps.base_proxy_sqpn)
  return -EINVAL;

 if (qpn >= dev->phys_caps.base_tunnel_sqpn)

  qk += qpn - dev->phys_caps.base_tunnel_sqpn;
 else
  qk += qpn - dev->phys_caps.base_proxy_sqpn;
 *qkey = qk;
 return 0;
}
