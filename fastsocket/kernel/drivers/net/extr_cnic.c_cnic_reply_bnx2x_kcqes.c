
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kcqe {int dummy; } ;
struct cnic_ulp_ops {int (* indicate_kcqes ) (int ,struct kcqe**,int ) ;} ;
struct cnic_local {int * ulp_handle; int * ulp_ops; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 scalar_t__ likely (struct cnic_ulp_ops*) ;
 struct cnic_ulp_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (int ,struct kcqe**,int ) ;

__attribute__((used)) static void cnic_reply_bnx2x_kcqes(struct cnic_dev *dev, int ulp_type,
       struct kcqe *cqes[], u32 num_cqes)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_ulp_ops *ulp_ops;

 rcu_read_lock();
 ulp_ops = rcu_dereference(cp->ulp_ops[ulp_type]);
 if (likely(ulp_ops)) {
  ulp_ops->indicate_kcqes(cp->ulp_handle[ulp_type],
       cqes, num_cqes);
 }
 rcu_read_unlock();
}
