
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct TYPE_2__ {int flags; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 unsigned long long MLX4_ASYNC_EVENT_MASK ;
 int MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV ;
 unsigned long long MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT ;

__attribute__((used)) static u64 get_async_ev_mask(struct mlx4_dev *dev)
{
 u64 async_ev_mask = MLX4_ASYNC_EVENT_MASK;
 if (dev->caps.flags & MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV)
  async_ev_mask |= (1ull << MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT);

 return async_ev_mask;
}
