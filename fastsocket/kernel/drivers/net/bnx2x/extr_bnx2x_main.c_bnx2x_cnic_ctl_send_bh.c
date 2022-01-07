
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_ops {int (* cnic_ctl ) (int ,struct cnic_ctl_info*) ;} ;
struct cnic_ctl_info {int dummy; } ;
struct bnx2x {int cnic_data; int cnic_ops; } ;


 struct cnic_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (int ,struct cnic_ctl_info*) ;

__attribute__((used)) static int bnx2x_cnic_ctl_send_bh(struct bnx2x *bp, struct cnic_ctl_info *ctl)
{
 struct cnic_ops *c_ops;
 int rc = 0;

 rcu_read_lock();
 c_ops = rcu_dereference(bp->cnic_ops);
 if (c_ops)
  rc = c_ops->cnic_ctl(bp->cnic_data, ctl);
 rcu_read_unlock();

 return rc;
}
