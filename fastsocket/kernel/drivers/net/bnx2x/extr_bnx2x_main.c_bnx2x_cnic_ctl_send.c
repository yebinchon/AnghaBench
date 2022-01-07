
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_ops {int (* cnic_ctl ) (int ,struct cnic_ctl_info*) ;} ;
struct cnic_ctl_info {int dummy; } ;
struct bnx2x {int cnic_mutex; int cnic_data; int cnic_ops; } ;


 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cnic_ops* rcu_dereference_protected (int ,int ) ;
 int stub1 (int ,struct cnic_ctl_info*) ;

__attribute__((used)) static int bnx2x_cnic_ctl_send(struct bnx2x *bp, struct cnic_ctl_info *ctl)
{
 struct cnic_ops *c_ops;
 int rc = 0;

 mutex_lock(&bp->cnic_mutex);
 c_ops = rcu_dereference_protected(bp->cnic_ops,
       lockdep_is_held(&bp->cnic_mutex));
 if (c_ops)
  rc = c_ops->cnic_ctl(bp->cnic_data, ctl);
 mutex_unlock(&bp->cnic_mutex);

 return rc;
}
