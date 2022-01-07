
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct slave_list {int dummy; } ;
struct TYPE_5__ {int lock; int * res_tree; TYPE_4__* slave_list; } ;
struct TYPE_6__ {TYPE_1__ res_tracker; } ;
struct TYPE_7__ {TYPE_2__ master; } ;
struct mlx4_priv {TYPE_3__ mfunc; } ;
struct mlx4_dev {int num_slaves; } ;
struct TYPE_8__ {int mutex; int * res_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MLX4_NUM_OF_RESOURCE_TYPE ;
 int RB_ROOT ;
 TYPE_4__* kzalloc (int,int ) ;
 int mlx4_dbg (struct mlx4_dev*,char*,int) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

int mlx4_init_resource_tracker(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int i;
 int t;

 priv->mfunc.master.res_tracker.slave_list =
  kzalloc(dev->num_slaves * sizeof(struct slave_list),
   GFP_KERNEL);
 if (!priv->mfunc.master.res_tracker.slave_list)
  return -ENOMEM;

 for (i = 0 ; i < dev->num_slaves; i++) {
  for (t = 0; t < MLX4_NUM_OF_RESOURCE_TYPE; ++t)
   INIT_LIST_HEAD(&priv->mfunc.master.res_tracker.
           slave_list[i].res_list[t]);
  mutex_init(&priv->mfunc.master.res_tracker.slave_list[i].mutex);
 }

 mlx4_dbg(dev, "Started init_resource_tracker: %ld slaves\n",
   dev->num_slaves);
 for (i = 0 ; i < MLX4_NUM_OF_RESOURCE_TYPE; i++)
  priv->mfunc.master.res_tracker.res_tree[i] = RB_ROOT;

 spin_lock_init(&priv->mfunc.master.res_tracker.lock);
 return 0 ;
}
