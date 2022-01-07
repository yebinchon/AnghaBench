
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int max_order; } ;
struct mlx4_mr_table {int mpt_bitmap; TYPE_2__ mtt_buddy; } ;
struct mlx4_priv {scalar_t__ reserved_mtts; struct mlx4_mr_table mr_table; } ;
struct TYPE_4__ {scalar_t__ reserved_mtts; scalar_t__ num_mtts; int reserved_mrws; int num_mpts; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int EINVAL ;
 int ENOMEM ;
 int fls (scalar_t__) ;
 int ilog2 (int) ;
 int is_power_of_2 (int ) ;
 int log_mtts_per_seg ;
 scalar_t__ mlx4_alloc_mtt_range (struct mlx4_dev*,int ) ;
 int mlx4_bitmap_cleanup (int *) ;
 int mlx4_bitmap_init (int *,int ,int ,int ,int ) ;
 int mlx4_buddy_cleanup (TYPE_2__*) ;
 int mlx4_buddy_init (TYPE_2__*,int ) ;
 scalar_t__ mlx4_is_slave (struct mlx4_dev*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*,int ) ;

int mlx4_init_mr_table(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_mr_table *mr_table = &priv->mr_table;
 int err;

 if (!is_power_of_2(dev->caps.num_mpts))
  return -EINVAL;



 if (mlx4_is_slave(dev))
  return 0;

 err = mlx4_bitmap_init(&mr_table->mpt_bitmap, dev->caps.num_mpts,
          ~0, dev->caps.reserved_mrws, 0);
 if (err)
  return err;

 err = mlx4_buddy_init(&mr_table->mtt_buddy,
         ilog2((u32)dev->caps.num_mtts /
         (1 << log_mtts_per_seg)));
 if (err)
  goto err_buddy;

 if (dev->caps.reserved_mtts) {
  priv->reserved_mtts =
   mlx4_alloc_mtt_range(dev,
          fls(dev->caps.reserved_mtts - 1));
  if (priv->reserved_mtts < 0) {
   mlx4_warn(dev, "MTT table of order %u is too small.\n",
      mr_table->mtt_buddy.max_order);
   err = -ENOMEM;
   goto err_reserve_mtts;
  }
 }

 return 0;

err_reserve_mtts:
 mlx4_buddy_cleanup(&mr_table->mtt_buddy);

err_buddy:
 mlx4_bitmap_cleanup(&mr_table->mpt_bitmap);

 return err;
}
