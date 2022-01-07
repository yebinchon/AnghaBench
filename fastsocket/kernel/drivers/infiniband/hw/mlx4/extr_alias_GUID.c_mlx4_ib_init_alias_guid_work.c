
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ag_work_lock; TYPE_1__* ports_guid; } ;
struct TYPE_6__ {int going_down_lock; TYPE_2__ alias_guid; int is_going_down; } ;
struct mlx4_ib_dev {TYPE_3__ sriov; int dev; } ;
struct TYPE_4__ {int alias_guid_work; int wq; } ;


 int mlx4_is_master (int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mlx4_ib_init_alias_guid_work(struct mlx4_ib_dev *dev, int port)
{
 unsigned long flags, flags1;

 if (!mlx4_is_master(dev->dev))
  return;
 spin_lock_irqsave(&dev->sriov.going_down_lock, flags);
 spin_lock_irqsave(&dev->sriov.alias_guid.ag_work_lock, flags1);
 if (!dev->sriov.is_going_down) {
  queue_delayed_work(dev->sriov.alias_guid.ports_guid[port].wq,
      &dev->sriov.alias_guid.ports_guid[port].alias_guid_work, 0);
 }
 spin_unlock_irqrestore(&dev->sriov.alias_guid.ag_work_lock, flags1);
 spin_unlock_irqrestore(&dev->sriov.going_down_lock, flags);
}
