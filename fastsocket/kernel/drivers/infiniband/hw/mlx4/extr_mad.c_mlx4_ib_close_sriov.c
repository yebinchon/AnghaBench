
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_going_down; TYPE_2__* demux; int ** sqps; int going_down_lock; } ;
struct mlx4_ib_dev {int num_ports; TYPE_1__ sriov; int dev; } ;
struct TYPE_4__ {int ud_wq; } ;


 int flush_workqueue (int ) ;
 int kfree (int *) ;
 int mlx4_ib_cm_paravirt_clean (struct mlx4_ib_dev*,int) ;
 int mlx4_ib_destroy_alias_guid_service (struct mlx4_ib_dev*) ;
 int mlx4_ib_device_unregister_sysfs (struct mlx4_ib_dev*) ;
 int mlx4_ib_free_demux_ctx (TYPE_2__*) ;
 int mlx4_ib_free_sqp_ctx (int *) ;
 scalar_t__ mlx4_is_master (int ) ;
 int mlx4_is_mfunc (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mlx4_ib_close_sriov(struct mlx4_ib_dev *dev)
{
 int i;
 unsigned long flags;

 if (!mlx4_is_mfunc(dev->dev))
  return;

 spin_lock_irqsave(&dev->sriov.going_down_lock, flags);
 dev->sriov.is_going_down = 1;
 spin_unlock_irqrestore(&dev->sriov.going_down_lock, flags);
 if (mlx4_is_master(dev->dev)) {
  for (i = 0; i < dev->num_ports; i++) {
   flush_workqueue(dev->sriov.demux[i].ud_wq);
   mlx4_ib_free_sqp_ctx(dev->sriov.sqps[i]);
   kfree(dev->sriov.sqps[i]);
   dev->sriov.sqps[i] = ((void*)0);
   mlx4_ib_free_demux_ctx(&dev->sriov.demux[i]);
  }

  mlx4_ib_cm_paravirt_clean(dev, -1);
  mlx4_ib_destroy_alias_guid_service(dev);
  mlx4_ib_device_unregister_sysfs(dev);
 }
}
