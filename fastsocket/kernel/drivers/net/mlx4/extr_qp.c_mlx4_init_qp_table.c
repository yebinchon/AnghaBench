
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct mlx4_qp_table {int bitmap; int lock; } ;
struct TYPE_5__ {scalar_t__* reserved_qps_cnt; int num_qps; int* reserved_qps_base; int num_ports; scalar_t__* qp1_proxy; scalar_t__* qp1_tunnel; scalar_t__* qp0_proxy; scalar_t__* qp0_tunnel; } ;
struct TYPE_4__ {scalar_t__ base_sqpn; scalar_t__ base_proxy_sqpn; scalar_t__ base_tunnel_sqpn; } ;
struct mlx4_dev {TYPE_2__ caps; TYPE_1__ phys_caps; int qp_table_tree; } ;
struct TYPE_6__ {struct mlx4_qp_table qp_table; } ;


 scalar_t__ ALIGN (scalar_t__,int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_RADIX_TREE (int *,int ) ;
 scalar_t__ MLX4_MAX_PORTS ;
 int MLX4_MFUNC_MAX ;
 int MLX4_NUM_QP_REGION ;
 size_t MLX4_QP_REGION_FW ;
 void* kcalloc (int,int,int ) ;
 int kfree (scalar_t__*) ;
 int mlx4_CONF_SPECIAL_QP (struct mlx4_dev*,scalar_t__) ;
 int mlx4_bitmap_init (int *,int,int,scalar_t__,int) ;
 int mlx4_is_master (struct mlx4_dev*) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 scalar_t__ mlx4_is_slave (struct mlx4_dev*) ;
 int mlx4_master_func_num (struct mlx4_dev*) ;
 TYPE_3__* mlx4_priv (struct mlx4_dev*) ;
 int spin_lock_init (int *) ;

int mlx4_init_qp_table(struct mlx4_dev *dev)
{
 struct mlx4_qp_table *qp_table = &mlx4_priv(dev)->qp_table;
 int err;
 int reserved_from_top = 0;
 int k;

 spin_lock_init(&qp_table->lock);
 INIT_RADIX_TREE(&dev->qp_table_tree, GFP_ATOMIC);
 if (mlx4_is_slave(dev))
  return 0;
 dev->phys_caps.base_sqpn =
  ALIGN(dev->caps.reserved_qps_cnt[MLX4_QP_REGION_FW], 8);

 {
  int sort[MLX4_NUM_QP_REGION];
  int i, j, tmp;
  int last_base = dev->caps.num_qps;

  for (i = 1; i < MLX4_NUM_QP_REGION; ++i)
   sort[i] = i;

  for (i = MLX4_NUM_QP_REGION; i > 0; --i) {
   for (j = 2; j < i; ++j) {
    if (dev->caps.reserved_qps_cnt[sort[j]] >
        dev->caps.reserved_qps_cnt[sort[j - 1]]) {
     tmp = sort[j];
     sort[j] = sort[j - 1];
     sort[j - 1] = tmp;
    }
   }
  }

  for (i = 1; i < MLX4_NUM_QP_REGION; ++i) {
   last_base -= dev->caps.reserved_qps_cnt[sort[i]];
   dev->caps.reserved_qps_base[sort[i]] = last_base;
   reserved_from_top +=
    dev->caps.reserved_qps_cnt[sort[i]];
  }

 }
 err = mlx4_bitmap_init(&qp_table->bitmap, dev->caps.num_qps,
          (1 << 23) - 1, dev->phys_caps.base_sqpn + 8 +
          16 * MLX4_MFUNC_MAX * !!mlx4_is_master(dev),
          reserved_from_top);
 if (err)
  return err;

 if (mlx4_is_mfunc(dev)) {

  dev->phys_caps.base_proxy_sqpn = dev->phys_caps.base_sqpn + 8;
  dev->phys_caps.base_tunnel_sqpn = dev->phys_caps.base_sqpn + 8 + 8 * MLX4_MFUNC_MAX;



  dev->caps.qp0_tunnel = kcalloc(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
  dev->caps.qp0_proxy = kcalloc(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
  dev->caps.qp1_tunnel = kcalloc(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
  dev->caps.qp1_proxy = kcalloc(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);

  if (!dev->caps.qp0_tunnel || !dev->caps.qp0_proxy ||
      !dev->caps.qp1_tunnel || !dev->caps.qp1_proxy) {
   err = -ENOMEM;
   goto err_mem;
  }

  for (k = 0; k < dev->caps.num_ports; k++) {
   dev->caps.qp0_proxy[k] = dev->phys_caps.base_proxy_sqpn +
    8 * mlx4_master_func_num(dev) + k;
   dev->caps.qp0_tunnel[k] = dev->caps.qp0_proxy[k] + 8 * MLX4_MFUNC_MAX;
   dev->caps.qp1_proxy[k] = dev->phys_caps.base_proxy_sqpn +
    8 * mlx4_master_func_num(dev) + MLX4_MAX_PORTS + k;
   dev->caps.qp1_tunnel[k] = dev->caps.qp1_proxy[k] + 8 * MLX4_MFUNC_MAX;
  }
 }


 err = mlx4_CONF_SPECIAL_QP(dev, dev->phys_caps.base_sqpn);
 if (err)
  goto err_mem;
 return 0;

err_mem:
 kfree(dev->caps.qp0_tunnel);
 kfree(dev->caps.qp0_proxy);
 kfree(dev->caps.qp1_tunnel);
 kfree(dev->caps.qp1_proxy);
 dev->caps.qp0_tunnel = dev->caps.qp0_proxy =
  dev->caps.qp1_tunnel = dev->caps.qp1_proxy = ((void*)0);
 return err;
}
