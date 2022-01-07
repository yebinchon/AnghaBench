
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_ib_dev {TYPE_1__* dev; } ;
struct TYPE_2__ {int num_vfs; } ;


 int mlx4_is_master (TYPE_1__*) ;
 int register_one_pkey_tree (struct mlx4_ib_dev*,int) ;

__attribute__((used)) static int register_pkey_tree(struct mlx4_ib_dev *device)
{
 int i;

 if (!mlx4_is_master(device->dev))
  return 0;

 for (i = 0; i <= device->dev->num_vfs; ++i)
  register_one_pkey_tree(device, i);

 return 0;
}
