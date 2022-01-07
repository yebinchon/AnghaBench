
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct res_mpt {int key; } ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;
 int RES_MPT ;
 int RES_MPT_MAPPED ;


 int __mlx4_mpt_alloc_icm (struct mlx4_dev*,int ) ;
 int __mlx4_mpt_release (struct mlx4_dev*,int) ;
 int __mlx4_mpt_reserve (struct mlx4_dev*) ;
 int add_res_range (struct mlx4_dev*,int,int,int,int ,int) ;
 int get_param_l (int *) ;
 int mpt_mask (struct mlx4_dev*) ;
 int mr_res_start_move_to (struct mlx4_dev*,int,int,int ,struct res_mpt**) ;
 int res_abort_move (struct mlx4_dev*,int,int ,int) ;
 int res_end_move (struct mlx4_dev*,int,int ,int) ;
 int set_param_l (int *,int) ;

__attribute__((used)) static int mpt_alloc_res(struct mlx4_dev *dev, int slave, int op, int cmd,
    u64 in_param, u64 *out_param)
{
 int err = -EINVAL;
 int index;
 int id;
 struct res_mpt *mpt;

 switch (op) {
 case 128:
  index = __mlx4_mpt_reserve(dev);
  if (index == -1)
   break;
  id = index & mpt_mask(dev);

  err = add_res_range(dev, slave, id, 1, RES_MPT, index);
  if (err) {
   __mlx4_mpt_release(dev, index);
   break;
  }
  set_param_l(out_param, index);
  break;
 case 129:
  index = get_param_l(&in_param);
  id = index & mpt_mask(dev);
  err = mr_res_start_move_to(dev, slave, id,
        RES_MPT_MAPPED, &mpt);
  if (err)
   return err;

  err = __mlx4_mpt_alloc_icm(dev, mpt->key);
  if (err) {
   res_abort_move(dev, slave, RES_MPT, id);
   return err;
  }

  res_end_move(dev, slave, RES_MPT, id);
  break;
 }
 return err;
}
