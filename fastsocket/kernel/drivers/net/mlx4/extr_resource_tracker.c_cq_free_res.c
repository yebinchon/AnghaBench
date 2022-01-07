
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;
 int RES_CQ ;

 int __mlx4_cq_free_icm (struct mlx4_dev*,int) ;
 int get_param_l (int *) ;
 int rem_res_range (struct mlx4_dev*,int,int,int,int ,int ) ;

__attribute__((used)) static int cq_free_res(struct mlx4_dev *dev, int slave, int op, int cmd,
         u64 in_param, u64 *out_param)
{
 int cqn;
 int err;

 switch (op) {
 case 128:
  cqn = get_param_l(&in_param);
  err = rem_res_range(dev, slave, cqn, 1, RES_CQ, 0);
  if (err)
   break;

  __mlx4_cq_free_icm(dev, cqn);
  break;

 default:
  err = -EINVAL;
  break;
 }

 return err;
}
