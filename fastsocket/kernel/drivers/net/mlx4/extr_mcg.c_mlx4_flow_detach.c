
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int mlx4_QP_FLOW_STEERING_DETACH (struct mlx4_dev*,int ) ;
 int mlx4_err (struct mlx4_dev*,char*,int ) ;

int mlx4_flow_detach(struct mlx4_dev *dev, u64 reg_id)
{
 int err;

 err = mlx4_QP_FLOW_STEERING_DETACH(dev, reg_id);
 if (err)
  mlx4_err(dev, "Fail to detach network rule. registration id = 0x%llx\n",
    reg_id);
 return err;
}
