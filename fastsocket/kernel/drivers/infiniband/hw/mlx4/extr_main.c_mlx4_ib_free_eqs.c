
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_comp_vectors; } ;
struct mlx4_ib_dev {scalar_t__* eq_table; int eq_added; TYPE_1__ ib_dev; } ;
struct TYPE_4__ {scalar_t__ num_comp_vectors; } ;
struct mlx4_dev {TYPE_2__ caps; } ;


 int kfree (scalar_t__*) ;
 int mlx4_release_eq (struct mlx4_dev*,scalar_t__) ;

__attribute__((used)) static void mlx4_ib_free_eqs(struct mlx4_dev *dev, struct mlx4_ib_dev *ibdev)
{
 int i;


 if (!ibdev->eq_table)
  return;


 ibdev->ib_dev.num_comp_vectors = dev->caps.num_comp_vectors;


 for (i = 0; i < ibdev->eq_added; i++) {

  if (ibdev->eq_table[i] <= dev->caps.num_comp_vectors)
   continue;
  mlx4_release_eq(dev, ibdev->eq_table[i]);
 }

 kfree(ibdev->eq_table);
}
