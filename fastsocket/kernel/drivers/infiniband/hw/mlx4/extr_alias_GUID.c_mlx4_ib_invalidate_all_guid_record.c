
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


 int NUM_ALIAS_GUID_REC_IN_PORT ;
 int __cancel_delayed_work (int *) ;
 int invalidate_guid_record (struct mlx4_ib_dev*,int,int) ;
 scalar_t__ mlx4_is_master (int ) ;
 int pr_debug (char*,int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mlx4_ib_invalidate_all_guid_record(struct mlx4_ib_dev *dev, int port)
{
 int i;
 unsigned long flags, flags1;

 pr_debug("port %d\n", port);

 spin_lock_irqsave(&dev->sriov.going_down_lock, flags);
 spin_lock_irqsave(&dev->sriov.alias_guid.ag_work_lock, flags1);
 for (i = 0; i < NUM_ALIAS_GUID_REC_IN_PORT; i++)
  invalidate_guid_record(dev, port, i);

 if (mlx4_is_master(dev->dev) && !dev->sriov.is_going_down) {





  __cancel_delayed_work(&dev->sriov.alias_guid.
          ports_guid[port - 1].alias_guid_work);
  queue_delayed_work(dev->sriov.alias_guid.ports_guid[port - 1].wq,
       &dev->sriov.alias_guid.ports_guid[port - 1].alias_guid_work,
       0);
 }
 spin_unlock_irqrestore(&dev->sriov.alias_guid.ag_work_lock, flags1);
 spin_unlock_irqrestore(&dev->sriov.going_down_lock, flags);
}
