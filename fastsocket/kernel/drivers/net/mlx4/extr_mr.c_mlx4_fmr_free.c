
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; } ;
struct mlx4_fmr {TYPE_1__ mr; scalar_t__ maps; } ;
struct mlx4_dev {int dummy; } ;


 int EBUSY ;
 int MLX4_MPT_DISABLED ;
 int mlx4_mr_free (struct mlx4_dev*,TYPE_1__*) ;

int mlx4_fmr_free(struct mlx4_dev *dev, struct mlx4_fmr *fmr)
{
 int ret;

 if (fmr->maps)
  return -EBUSY;

 ret = mlx4_mr_free(dev, &fmr->mr);
 if (ret)
  return ret;
 fmr->mr.enabled = MLX4_MPT_DISABLED;

 return 0;
}
