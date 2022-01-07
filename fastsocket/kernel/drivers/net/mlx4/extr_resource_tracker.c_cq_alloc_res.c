
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;
 int RES_CQ ;

 int __mlx4_cq_alloc_icm (struct mlx4_dev*,int*) ;
 int __mlx4_cq_free_icm (struct mlx4_dev*,int) ;
 int add_res_range (struct mlx4_dev*,int,int,int,int ,int ) ;
 int set_param_l (int *,int) ;

__attribute__((used)) static int cq_alloc_res(struct mlx4_dev *dev, int slave, int op, int cmd,
   u64 in_param, u64 *out_param)
{
 int cqn;
 int err;

 switch (op) {
 case 128:
  err = __mlx4_cq_alloc_icm(dev, &cqn);
  if (err)
   break;

  err = add_res_range(dev, slave, cqn, 1, RES_CQ, 0);
  if (err) {
   __mlx4_cq_free_icm(dev, cqn);
   break;
  }

  set_param_l(out_param, cqn);
  break;

 default:
  err = -EINVAL;
 }

 return err;
}
