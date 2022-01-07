
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int num_vfs; } ;


 int EINVAL ;
 int mlx4_err (struct mlx4_dev*,char*,int,int) ;

__attribute__((used)) static int mlx4_get_slave_indx(struct mlx4_dev *dev, int vf)
{
 if ((vf < 0) || (vf >= dev->num_vfs)) {
  mlx4_err(dev, "Bad vf number:%d (number of activated vf: %d)\n", vf, dev->num_vfs);
  return -EINVAL;
 }

 return vf+1;
}
