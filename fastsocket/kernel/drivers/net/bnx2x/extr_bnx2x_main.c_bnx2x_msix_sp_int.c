
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cnic_ops {int (* cnic_handler ) (int ,int *) ;} ;
struct bnx2x {int cnic_data; int cnic_ops; int panic; int igu_dsb_id; } ;
typedef int irqreturn_t ;


 scalar_t__ CNIC_LOADED (struct bnx2x*) ;
 int IGU_INT_DISABLE ;
 int IRQ_HANDLED ;
 int USTORM_ID ;
 int bnx2x_ack_sb (struct bnx2x*,int ,int ,int ,int ,int ) ;
 int bnx2x_schedule_sp_task (struct bnx2x*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 struct cnic_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (int ,int *) ;
 scalar_t__ unlikely (int ) ;

irqreturn_t bnx2x_msix_sp_int(int irq, void *dev_instance)
{
 struct net_device *dev = dev_instance;
 struct bnx2x *bp = netdev_priv(dev);

 bnx2x_ack_sb(bp, bp->igu_dsb_id, USTORM_ID, 0,
       IGU_INT_DISABLE, 0);






 if (CNIC_LOADED(bp)) {
  struct cnic_ops *c_ops;

  rcu_read_lock();
  c_ops = rcu_dereference(bp->cnic_ops);
  if (c_ops)
   c_ops->cnic_handler(bp->cnic_data, ((void*)0));
  rcu_read_unlock();
 }




 bnx2x_schedule_sp_task(bp);

 return IRQ_HANDLED;
}
