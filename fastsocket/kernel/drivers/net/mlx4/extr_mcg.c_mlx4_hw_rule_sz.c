
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;
typedef enum mlx4_net_trans_rule_id { ____Placeholder_mlx4_net_trans_rule_id } mlx4_net_trans_rule_id ;


 int EINVAL ;
 int MLX4_NET_TRANS_RULE_NUM ;
 int* __rule_hw_sz ;
 int mlx4_err (struct mlx4_dev*,char*,int) ;

int mlx4_hw_rule_sz(struct mlx4_dev *dev,
        enum mlx4_net_trans_rule_id id)
{
 if (id >= MLX4_NET_TRANS_RULE_NUM || id < 0) {
  mlx4_err(dev, "Invalid network rule id. id = %d\n", id);
  return -EINVAL;
 }

 return __rule_hw_sz[id];
}
