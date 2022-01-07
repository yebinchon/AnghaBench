
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union ib_gid {int raw; } ;
typedef int u64 ;
typedef int u16 ;
struct TYPE_6__ {int raw; } ;
struct mlx4_ib_steering {int list; int reg_id; TYPE_2__ gid; } ;
struct mlx4_ib_qp {int flags; int mqp; int mutex; int steering_rules; int port; } ;
struct mlx4_ib_dev {TYPE_3__* dev; } ;
struct ib_qp {int device; } ;
struct TYPE_5__ {scalar_t__ steering_mode; } ;
struct TYPE_7__ {TYPE_1__ caps; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK ;
 int MLX4_PROT_IB_IPV6 ;
 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ;
 int add_gid_entry (struct ib_qp*,union ib_gid*) ;
 int kfree (struct mlx4_ib_steering*) ;
 struct mlx4_ib_steering* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int ,int ,int) ;
 int mlx4_multicast_attach (TYPE_3__*,int *,int ,int ,int,int ,int *) ;
 int mlx4_multicast_detach (TYPE_3__*,int *,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 struct mlx4_ib_qp* to_mqp (struct ib_qp*) ;

__attribute__((used)) static int mlx4_ib_mcg_attach(struct ib_qp *ibqp, union ib_gid *gid, u16 lid)
{
 int err;
 struct mlx4_ib_dev *mdev = to_mdev(ibqp->device);
 struct mlx4_ib_qp *mqp = to_mqp(ibqp);
 u64 reg_id;
 struct mlx4_ib_steering *ib_steering = ((void*)0);

 if (mdev->dev->caps.steering_mode ==
     MLX4_STEERING_MODE_DEVICE_MANAGED) {
  ib_steering = kmalloc(sizeof(*ib_steering), GFP_KERNEL);
  if (!ib_steering)
   return -ENOMEM;
 }

 err = mlx4_multicast_attach(mdev->dev, &mqp->mqp, gid->raw, mqp->port,
        !!(mqp->flags &
           MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK),
        MLX4_PROT_IB_IPV6, &reg_id);
 if (err)
  goto err_malloc;

 err = add_gid_entry(ibqp, gid);
 if (err)
  goto err_add;

 if (ib_steering) {
  memcpy(ib_steering->gid.raw, gid->raw, 16);
  ib_steering->reg_id = reg_id;
  mutex_lock(&mqp->mutex);
  list_add(&ib_steering->list, &mqp->steering_rules);
  mutex_unlock(&mqp->mutex);
 }
 return 0;

err_add:
 mlx4_multicast_detach(mdev->dev, &mqp->mqp, gid->raw,
         MLX4_PROT_IB_IPV6, reg_id);
err_malloc:
 kfree(ib_steering);

 return err;
}
